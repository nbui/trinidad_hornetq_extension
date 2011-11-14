$:.unshift(File.expand_path"./java", File.dirname(__FILE__))
require "trinidad"
module Trinidad
  module Extensions
    module Hornetq
      VERSION = '0.0.1'
    end

    class HornetqServerExtension < ServerExtension
      def configure(tomcat)
        require "netty.jar"
        require "hornetq-core.jar"
        require "hornetq-core-client.jar"
      end

    end
  end
end
