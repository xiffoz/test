class Slug
  class << self
    def [](slug)
      redis.hget(hash, slug)
    end

    private
      def redis
        $redis
      end

      def hash
        "post_ids"
      end
  end
end