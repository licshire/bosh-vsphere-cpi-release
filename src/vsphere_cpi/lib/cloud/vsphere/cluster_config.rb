module VSphereCloud
  class ClusterConfig

    attr_reader :name

    def initialize(name, config_hash)
      @name = name
      @config = config_hash
    end

    # @TODO: Make this part of define_method below.
    def resource_pool
      @config['resource_pool']
    end

    %w[vm_group host_group vm_host_affinity_rule_name].each do |name|
      define_method(name) { @config[name] }
    end

  end
end
