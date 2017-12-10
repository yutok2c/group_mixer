module GroupMixer
  class WeightedGroup
    include Enumerable
    extend Forwardable

    def initialize(members=[], weight=1)
      @members = members
      @weight = weight
    end

    def_delegators :@members, :size, :each
    attr_reader :members, :weight
  end
end
