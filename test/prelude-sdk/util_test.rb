# frozen_string_literal: true

require_relative "test_helper"

class PreludeSDK::Test::UtilTest < Minitest::Test
  def test_left_map
    assert_nil(PreludeSDK::Util.deep_merge({a: 1}, nil))
  end

  def test_right_map
    assert_equal(PreludeSDK::Util.deep_merge(nil, {a: 1}), {a: 1})
  end

  def test_disjoint_maps
    assert_equal(
      PreludeSDK::Util.deep_merge({b: 2}, {a: 1}), {a: 1, b: 2}
    )
  end

  def test_overlapping_maps
    assert_equal(
      PreludeSDK::Util.deep_merge({b: 2, c: 3}, {a: 1, c: 4}),
      {a: 1, b: 2, c: 4}
    )
  end

  def test_nested
    assert_equal(
      PreludeSDK::Util.deep_merge({b: {b2: 1}}, {b: {b2: 2}}),
      {b: {b2: 2}}
    )
  end

  def test_nested_left_map
    assert_equal(
      PreludeSDK::Util.deep_merge({b: {b2: 1}}, {b: 6}),
      {b: 6}
    )
  end

  def test_omission
    assert_equal(
      {b: {b2: 1, b3: {d: 5}}},
      PreludeSDK::Util.deep_merge(
        {b: {b2: 1, b3: {c: 4, d: 5}}},
        {b: {b2: 1, b3: {c: PreludeSDK::Util::OMIT, d: 5}}}
      )
    )
  end

  def test_concat
    assert_equal(
      {a: {b: [1, 2, 3, 4]}},
      PreludeSDK::Util.deep_merge(
        {a: {b: [1, 2]}},
        {a: {b: [3, 4]}},
        concat: true
      )
    )
  end

  def test_concat_false
    assert_equal(
      {a: {b: [3, 4]}},
      PreludeSDK::Util.deep_merge(
        {a: {b: [1, 2]}},
        {a: {b: [3, 4]}},
        concat: false
      )
    )
  end

  def test_dig
    assert_equal(1, PreludeSDK::Util.dig(1, nil))
    assert_nil(PreludeSDK::Util.dig({a: 1}, :b))
    assert_equal(1, PreludeSDK::Util.dig({a: 1}, :a))
    assert_equal(1, PreludeSDK::Util.dig({a: {b: 1}}, [:a, :b]))
    assert_nil(PreludeSDK::Util.dig([], 1))
    assert_equal(1, PreludeSDK::Util.dig([nil, [nil, 1]], [1, 1]))
    assert_equal(1, PreludeSDK::Util.dig({a: [nil, 1]}, [:a, 1]))

    assert_raises(NoMatchingPatternError) do
      PreludeSDK::Util.dig([], 1.0)
    end
    assert_raises(NoMatchingPatternError) do
      PreludeSDK::Util.dig(Object, 1)
    end
  end

  def test_uri_parsing
    %w[
      http://example.com
      https://example.com/
      https://example.com:443/example?e1=e1&e2=e2&e=
    ].each do |url|
      uri = URI.parse(url)
      parsed = PreludeSDK::Util.parse_uri(uri)
      unparsed = PreludeSDK::Util.unparse_uri(parsed)

      assert_equal(unparsed, uri)
      assert_equal(parsed, PreludeSDK::Util.parse_uri(unparsed))
    end
  end
end
