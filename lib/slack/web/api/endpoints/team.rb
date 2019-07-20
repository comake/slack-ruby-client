# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Team
          #
          # This method is used to retrieve the "access logs" for users on a workspace.
          #
          # @option options [Object] :before
          #   End of time range of logs to include in results (inclusive).
          # @see https://api.slack.com/methods/team.accessLogs
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/team/team.accessLogs.json
          def team_accessLogs(options = {})
            post('team.accessLogs', options)
          end

          #
          # This method lists billable information for each user on the team. Currently this consists solely of whether the user is
          # subject to billing per Slack's Fair Billing policy.
          #
          # @option options [user] :user
          #   A user to retrieve the billable information for. Defaults to all users.
          # @see https://api.slack.com/methods/team.billableInfo
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/team/team.billableInfo.json
          def team_billableInfo(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('team.billableInfo', options)
          end

          #
          # This method provides information about your team.
          #
          # @option options [Object] :team
          #   Team to get info on, if omitted, will return information about the current team. Will only return team that the authenticated token is allowed to see through external shared channels.
          # @see https://api.slack.com/methods/team.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/team/team.info.json
          def team_info(options = {})
            post('team.info', options)
          end

          #
          # This method lists the integration activity logs for a team, including when integrations are added, modified and removed. This method can only be called by Admins.
          #
          # @option options [Object] :app_id
          #   Filter logs to this Slack app. Defaults to all logs.
          # @option options [Object] :change_type
          #   Filter logs with this change type. Defaults to all logs.
          # @option options [Object] :service_id
          #   Filter logs to this service. Defaults to all logs.
          # @option options [user] :user
          #   Filter logs generated by this user's actions. Defaults to all logs.
          # @see https://api.slack.com/methods/team.integrationLogs
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/team/team.integrationLogs.json
          def team_integrationLogs(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('team.integrationLogs', options)
          end
        end
      end
    end
  end
end
