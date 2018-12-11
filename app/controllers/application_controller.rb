class ApplicationController < ActionController::Base
    before_action :block_ip_addresses

    protected 

    def block_ip_addresses
        @blockedIps = BlockedIp.all 

        puts "\n*****Blocking IPS ******"

        @blockedIps.each do |blocked|
            head :unauthorized if current_ip_address == blocked.ip
            puts "Blocking IP: " + blocked.ip 
        end

        puts "\n************************"
    end

    def current_ip_address 
        request.env['HTTP_X_REAL_IP'] || request.env['REMOTE_ADDR']
    end
end
