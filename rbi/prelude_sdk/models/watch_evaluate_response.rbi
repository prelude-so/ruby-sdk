# typed: strong

module PreludeSDK
  module Models
    class WatchEvaluateResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::WatchEvaluateResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The evaluation identifier.
      sig { returns(String) }
      attr_accessor :id

      # What the evaluation suggests you do, being the most severe action across the
      # recipes that ran. Advisory: enforcement is yours.
      #
      # - `ALLOW` - Let the request through.
      # - `BLOCK` - Refuse the request.
      # - `CHALLENGE` - Let the request through behind an additional check.
      sig do
        returns(PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol)
      end
      attr_accessor :action

      # One result per recipe that ran. A recipe the flow names but that is not in
      # service is absent rather than reported as having passed.
      sig do
        returns(T::Array[PreludeSDK::Models::WatchEvaluateResponse::Recipe])
      end
      attr_accessor :recipes

      # The evaluation-level verdict, being the most severe verdict across the recipes
      # that ran.
      #
      # - `PASS` - No recipe flagged.
      # - `FLAG` - At least one recipe flagged.
      sig do
        returns(
          PreludeSDK::Models::WatchEvaluateResponse::Verdict::TaggedSymbol
        )
      end
      attr_accessor :verdict

      sig do
        params(
          id: String,
          action: PreludeSDK::Models::WatchEvaluateResponse::Action::OrSymbol,
          recipes:
            T::Array[PreludeSDK::Models::WatchEvaluateResponse::Recipe::OrHash],
          verdict: PreludeSDK::Models::WatchEvaluateResponse::Verdict::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The evaluation identifier.
        id:,
        # What the evaluation suggests you do, being the most severe action across the
        # recipes that ran. Advisory: enforcement is yours.
        #
        # - `ALLOW` - Let the request through.
        # - `BLOCK` - Refuse the request.
        # - `CHALLENGE` - Let the request through behind an additional check.
        action:,
        # One result per recipe that ran. A recipe the flow names but that is not in
        # service is absent rather than reported as having passed.
        recipes:,
        # The evaluation-level verdict, being the most severe verdict across the recipes
        # that ran.
        #
        # - `PASS` - No recipe flagged.
        # - `FLAG` - At least one recipe flagged.
        verdict:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            action:
              PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol,
            recipes:
              T::Array[PreludeSDK::Models::WatchEvaluateResponse::Recipe],
            verdict:
              PreludeSDK::Models::WatchEvaluateResponse::Verdict::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # What the evaluation suggests you do, being the most severe action across the
      # recipes that ran. Advisory: enforcement is yours.
      #
      # - `ALLOW` - Let the request through.
      # - `BLOCK` - Refuse the request.
      # - `CHALLENGE` - Let the request through behind an additional check.
      module Action
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::WatchEvaluateResponse::Action)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALLOW =
          T.let(
            :ALLOW,
            PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol
          )
        BLOCK =
          T.let(
            :BLOCK,
            PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol
          )
        CHALLENGE =
          T.let(
            :CHALLENGE,
            PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::WatchEvaluateResponse::Action::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Recipe < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::WatchEvaluateResponse::Recipe,
              PreludeSDK::Internal::AnyHash
            )
          end

        # At least one rule could not be evaluated, so the score rests on less than the
        # whole recipe. The score is still returned — a partial verdict is more useful
        # than none — but it is labeled rather than passed off as whole.
        sig { returns(T::Boolean) }
        attr_accessor :partial_evidence

        # The recipe that produced this result.
        sig { returns(String) }
        attr_accessor :recipe_id

        # One result per rule in the recipe, in membership order. Every rule runs — a
        # score is only meaningful when complete, so there is no short-circuit on the
        # first trigger.
        sig do
          returns(
            T::Array[PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule]
          )
        end
        attr_accessor :rules

        # The sum of the weights of the rules that triggered, clamped to the range -100
        # to 100. Two scores at a bound are not comparable.
        sig { returns(Integer) }
        attr_accessor :score

        # The score at or above which this recipe flags.
        sig { returns(Integer) }
        attr_accessor :threshold

        # This recipe's own verdict. Normally the score against the threshold, unless a
        # preempting rule fired — see `determined_by`.
        sig do
          returns(
            PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::TaggedSymbol
          )
        end
        attr_accessor :verdict

        # The preempting rule that set `verdict`, present only when a rule rather than the
        # score decided it. Without it a recipe can report a score under its threshold and
        # still flag, with nothing in the payload accounting for the difference.
        sig { returns(T.nilable(String)) }
        attr_reader :determined_by

        sig { params(determined_by: String).void }
        attr_writer :determined_by

        sig do
          params(
            partial_evidence: T::Boolean,
            recipe_id: String,
            rules:
              T::Array[
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::OrHash
              ],
            score: Integer,
            threshold: Integer,
            verdict:
              PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::OrSymbol,
            determined_by: String
          ).returns(T.attached_class)
        end
        def self.new(
          # At least one rule could not be evaluated, so the score rests on less than the
          # whole recipe. The score is still returned — a partial verdict is more useful
          # than none — but it is labeled rather than passed off as whole.
          partial_evidence:,
          # The recipe that produced this result.
          recipe_id:,
          # One result per rule in the recipe, in membership order. Every rule runs — a
          # score is only meaningful when complete, so there is no short-circuit on the
          # first trigger.
          rules:,
          # The sum of the weights of the rules that triggered, clamped to the range -100
          # to 100. Two scores at a bound are not comparable.
          score:,
          # The score at or above which this recipe flags.
          threshold:,
          # This recipe's own verdict. Normally the score against the threshold, unless a
          # preempting rule fired — see `determined_by`.
          verdict:,
          # The preempting rule that set `verdict`, present only when a rule rather than the
          # score decided it. Without it a recipe can report a score under its threshold and
          # still flag, with nothing in the payload accounting for the difference.
          determined_by: nil
        )
        end

        sig do
          override.returns(
            {
              partial_evidence: T::Boolean,
              recipe_id: String,
              rules:
                T::Array[
                  PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule
                ],
              score: Integer,
              threshold: Integer,
              verdict:
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::TaggedSymbol,
              determined_by: String
            }
          )
        end
        def to_hash
        end

        class Rule < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule,
                PreludeSDK::Internal::AnyHash
              )
            end

          # What the rule concluded.
          #
          # - `TRIGGERED` - The condition held; `weight` was added to the score.
          # - `NOT_TRIGGERED` - The condition did not hold.
          # - `NOT_EVALUATED` - The rule could not run, because something it reads never
          #   arrived. This is not a quieter `NOT_TRIGGERED`: it contributed nothing either
          #   way, and it is why `partial_evidence` is set on the recipe.
          sig do
            returns(
              PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol
            )
          end
          attr_accessor :outcome

          # The rule that produced this result. Present whatever the rule's visibility, so a
          # rule you cannot see the condition of is still one you can reweight, switch off,
          # or ask us about.
          sig { returns(String) }
          attr_accessor :rule_id

          # What this rule contributes to the recipe's score when it triggers.
          sig { returns(Integer) }
          attr_accessor :weight

          # Why the rule could not run, set only when `outcome` is `NOT_EVALUATED`.
          #
          # A rule you authored names the signal or attribute it waited on, since you wrote
          # the expression that reads it. A Prelude-managed rule reports `missing_data` and
          # nothing more: the signal it waited on is part of a condition that is not
          # disclosed.
          sig { returns(T.nilable(String)) }
          attr_reader :blocked_by

          sig { params(blocked_by: String).void }
          attr_writer :blocked_by

          # The rule's name, present for a rule you authored and omitted for a
          # Prelude-managed one. A managed rule's name describes what it looks for, which is
          # as much of the condition as the expression is.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The rule could not run for a reason on our side rather than anything about your
          # request. `outcome` is `NOT_EVALUATED` and the failure is ours to fix.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :unavailable

          sig { params(unavailable: T::Boolean).void }
          attr_writer :unavailable

          sig do
            params(
              outcome:
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::OrSymbol,
              rule_id: String,
              weight: Integer,
              blocked_by: String,
              name: String,
              unavailable: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # What the rule concluded.
            #
            # - `TRIGGERED` - The condition held; `weight` was added to the score.
            # - `NOT_TRIGGERED` - The condition did not hold.
            # - `NOT_EVALUATED` - The rule could not run, because something it reads never
            #   arrived. This is not a quieter `NOT_TRIGGERED`: it contributed nothing either
            #   way, and it is why `partial_evidence` is set on the recipe.
            outcome:,
            # The rule that produced this result. Present whatever the rule's visibility, so a
            # rule you cannot see the condition of is still one you can reweight, switch off,
            # or ask us about.
            rule_id:,
            # What this rule contributes to the recipe's score when it triggers.
            weight:,
            # Why the rule could not run, set only when `outcome` is `NOT_EVALUATED`.
            #
            # A rule you authored names the signal or attribute it waited on, since you wrote
            # the expression that reads it. A Prelude-managed rule reports `missing_data` and
            # nothing more: the signal it waited on is part of a condition that is not
            # disclosed.
            blocked_by: nil,
            # The rule's name, present for a rule you authored and omitted for a
            # Prelude-managed one. A managed rule's name describes what it looks for, which is
            # as much of the condition as the expression is.
            name: nil,
            # The rule could not run for a reason on our side rather than anything about your
            # request. `outcome` is `NOT_EVALUATED` and the failure is ours to fix.
            unavailable: nil
          )
          end

          sig do
            override.returns(
              {
                outcome:
                  PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol,
                rule_id: String,
                weight: Integer,
                blocked_by: String,
                name: String,
                unavailable: T::Boolean
              }
            )
          end
          def to_hash
          end

          # What the rule concluded.
          #
          # - `TRIGGERED` - The condition held; `weight` was added to the score.
          # - `NOT_TRIGGERED` - The condition did not hold.
          # - `NOT_EVALUATED` - The rule could not run, because something it reads never
          #   arrived. This is not a quieter `NOT_TRIGGERED`: it contributed nothing either
          #   way, and it is why `partial_evidence` is set on the recipe.
          module Outcome
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TRIGGERED =
              T.let(
                :TRIGGERED,
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol
              )
            NOT_TRIGGERED =
              T.let(
                :NOT_TRIGGERED,
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol
              )
            NOT_EVALUATED =
              T.let(
                :NOT_EVALUATED,
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # This recipe's own verdict. Normally the score against the threshold, unless a
        # preempting rule fired — see `determined_by`.
        module Verdict
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PASS =
            T.let(
              :PASS,
              PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::TaggedSymbol
            )
          FLAG =
            T.let(
              :FLAG,
              PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The evaluation-level verdict, being the most severe verdict across the recipes
      # that ran.
      #
      # - `PASS` - No recipe flagged.
      # - `FLAG` - At least one recipe flagged.
      module Verdict
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::WatchEvaluateResponse::Verdict)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PASS =
          T.let(
            :PASS,
            PreludeSDK::Models::WatchEvaluateResponse::Verdict::TaggedSymbol
          )
        FLAG =
          T.let(
            :FLAG,
            PreludeSDK::Models::WatchEvaluateResponse::Verdict::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::WatchEvaluateResponse::Verdict::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
