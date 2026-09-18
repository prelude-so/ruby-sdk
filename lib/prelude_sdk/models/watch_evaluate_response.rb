# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#evaluate
    class WatchEvaluateResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The evaluation identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute action
      #   What the evaluation suggests you do, being the most severe action across the
      #   recipes that ran. Advisory: enforcement is yours.
      #
      #   - `ALLOW` - Let the request through.
      #   - `BLOCK` - Refuse the request.
      #   - `CHALLENGE` - Let the request through behind an additional check.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Action]
      required :action, enum: -> { PreludeSDK::Models::WatchEvaluateResponse::Action }

      # @!attribute recipes
      #   One result per recipe that ran. A recipe the flow names but that is not in
      #   service is absent rather than reported as having passed.
      #
      #   @return [Array<PreludeSDK::Models::WatchEvaluateResponse::Recipe>]
      required :recipes,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::WatchEvaluateResponse::Recipe] }

      # @!attribute verdict
      #   The evaluation-level verdict, being the most severe verdict across the recipes
      #   that ran.
      #
      #   - `PASS` - No recipe flagged.
      #   - `FLAG` - At least one recipe flagged.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Verdict]
      required :verdict, enum: -> { PreludeSDK::Models::WatchEvaluateResponse::Verdict }

      # @!method initialize(id:, action:, recipes:, verdict:)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchEvaluateResponse} for more details.
      #
      #   @param id [String] The evaluation identifier.
      #
      #   @param action [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Action] What the evaluation suggests you do, being the most severe action across the rec
      #
      #   @param recipes [Array<PreludeSDK::Models::WatchEvaluateResponse::Recipe>] One result per recipe that ran. A recipe the flow names but that is not in servi
      #
      #   @param verdict [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Verdict] The evaluation-level verdict, being the most severe verdict across the recipes t

      # What the evaluation suggests you do, being the most severe action across the
      # recipes that ran. Advisory: enforcement is yours.
      #
      # - `ALLOW` - Let the request through.
      # - `BLOCK` - Refuse the request.
      # - `CHALLENGE` - Let the request through behind an additional check.
      #
      # @see PreludeSDK::Models::WatchEvaluateResponse#action
      module Action
        extend PreludeSDK::Internal::Type::Enum

        ALLOW = :ALLOW
        BLOCK = :BLOCK
        CHALLENGE = :CHALLENGE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Recipe < PreludeSDK::Internal::Type::BaseModel
        # @!attribute partial_evidence
        #   At least one rule could not be evaluated, so the score rests on less than the
        #   whole recipe. The score is still returned — a partial verdict is more useful
        #   than none — but it is labeled rather than passed off as whole.
        #
        #   @return [Boolean]
        required :partial_evidence, PreludeSDK::Internal::Type::Boolean

        # @!attribute recipe_id
        #   The recipe that produced this result.
        #
        #   @return [String]
        required :recipe_id, String

        # @!attribute rules
        #   One result per rule in the recipe, in membership order. Every rule runs — a
        #   score is only meaningful when complete, so there is no short-circuit on the
        #   first trigger.
        #
        #   @return [Array<PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule>]
        required :rules,
                 -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule] }

        # @!attribute score
        #   The sum of the weights of the rules that triggered, clamped to the range -100
        #   to 100. Two scores at a bound are not comparable.
        #
        #   @return [Integer]
        required :score, Integer

        # @!attribute threshold
        #   The score at or above which this recipe flags.
        #
        #   @return [Integer]
        required :threshold, Integer

        # @!attribute verdict
        #   This recipe's own verdict. Normally the score against the threshold, unless a
        #   preempting rule fired — see `determined_by`.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict]
        required :verdict, enum: -> { PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict }

        # @!attribute determined_by
        #   The preempting rule that set `verdict`, present only when a rule rather than the
        #   score decided it. Without it a recipe can report a score under its threshold and
        #   still flag, with nothing in the payload accounting for the difference.
        #
        #   @return [String, nil]
        optional :determined_by, String

        # @!method initialize(partial_evidence:, recipe_id:, rules:, score:, threshold:, verdict:, determined_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::WatchEvaluateResponse::Recipe} for more details.
        #
        #   @param partial_evidence [Boolean] At least one rule could not be evaluated, so the score rests on less than the wh
        #
        #   @param recipe_id [String] The recipe that produced this result.
        #
        #   @param rules [Array<PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule>] One result per rule in the recipe, in membership order. Every rule runs — a scor
        #
        #   @param score [Integer] The sum of the weights of the rules that triggered, clamped to the range -100 to
        #
        #   @param threshold [Integer] The score at or above which this recipe flags.
        #
        #   @param verdict [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Recipe::Verdict] This recipe's own verdict. Normally the score against the threshold, unless a pr
        #
        #   @param determined_by [String] The preempting rule that set `verdict`, present only when a rule rather than the

        class Rule < PreludeSDK::Internal::Type::BaseModel
          # @!attribute outcome
          #   What the rule concluded.
          #
          #   - `TRIGGERED` - The condition held; `weight` was added to the score.
          #   - `NOT_TRIGGERED` - The condition did not hold.
          #   - `NOT_EVALUATED` - The rule could not run, because something it reads never
          #     arrived. This is not a quieter `NOT_TRIGGERED`: it contributed nothing either
          #     way, and it is why `partial_evidence` is set on the recipe.
          #
          #   @return [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome]
          required :outcome, enum: -> { PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome }

          # @!attribute rule_id
          #   The rule that produced this result. Present whatever the rule's visibility, so a
          #   rule you cannot see the condition of is still one you can reweight, switch off,
          #   or ask us about.
          #
          #   @return [String]
          required :rule_id, String

          # @!attribute weight
          #   What this rule contributes to the recipe's score when it triggers.
          #
          #   @return [Integer]
          required :weight, Integer

          # @!attribute blocked_by
          #   Why the rule could not run, set only when `outcome` is `NOT_EVALUATED`.
          #
          #   A rule you authored names the signal or attribute it waited on, since you wrote
          #   the expression that reads it. A Prelude-managed rule reports `missing_data` and
          #   nothing more: the signal it waited on is part of a condition that is not
          #   disclosed.
          #
          #   @return [String, nil]
          optional :blocked_by, String

          # @!attribute name
          #   The rule's name, present for a rule you authored and omitted for a
          #   Prelude-managed one. A managed rule's name describes what it looks for, which is
          #   as much of the condition as the expression is.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute unavailable
          #   The rule could not run for a reason on our side rather than anything about your
          #   request. `outcome` is `NOT_EVALUATED` and the failure is ours to fix.
          #
          #   @return [Boolean, nil]
          optional :unavailable, PreludeSDK::Internal::Type::Boolean

          # @!method initialize(outcome:, rule_id:, weight:, blocked_by: nil, name: nil, unavailable: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule} for more details.
          #
          #   @param outcome [Symbol, PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule::Outcome] What the rule concluded.
          #
          #   @param rule_id [String] The rule that produced this result. Present whatever the rule's visibility, so a
          #
          #   @param weight [Integer] What this rule contributes to the recipe's score when it triggers.
          #
          #   @param blocked_by [String] Why the rule could not run, set only when `outcome` is `NOT_EVALUATED`.
          #
          #   @param name [String] The rule's name, present for a rule you authored and omitted for a Prelude-manag
          #
          #   @param unavailable [Boolean] The rule could not run for a reason on our side rather than anything about your

          # What the rule concluded.
          #
          # - `TRIGGERED` - The condition held; `weight` was added to the score.
          # - `NOT_TRIGGERED` - The condition did not hold.
          # - `NOT_EVALUATED` - The rule could not run, because something it reads never
          #   arrived. This is not a quieter `NOT_TRIGGERED`: it contributed nothing either
          #   way, and it is why `partial_evidence` is set on the recipe.
          #
          # @see PreludeSDK::Models::WatchEvaluateResponse::Recipe::Rule#outcome
          module Outcome
            extend PreludeSDK::Internal::Type::Enum

            TRIGGERED = :TRIGGERED
            NOT_TRIGGERED = :NOT_TRIGGERED
            NOT_EVALUATED = :NOT_EVALUATED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # This recipe's own verdict. Normally the score against the threshold, unless a
        # preempting rule fired — see `determined_by`.
        #
        # @see PreludeSDK::Models::WatchEvaluateResponse::Recipe#verdict
        module Verdict
          extend PreludeSDK::Internal::Type::Enum

          PASS = :PASS
          FLAG = :FLAG

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The evaluation-level verdict, being the most severe verdict across the recipes
      # that ran.
      #
      # - `PASS` - No recipe flagged.
      # - `FLAG` - At least one recipe flagged.
      #
      # @see PreludeSDK::Models::WatchEvaluateResponse#verdict
      module Verdict
        extend PreludeSDK::Internal::Type::Enum

        PASS = :PASS
        FLAG = :FLAG

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
