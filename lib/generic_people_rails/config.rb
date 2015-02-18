module GenericPeopleRails
  module Config
    
    class << self

      def default_member_status=(status)
        @default_member_status = status
      end
      def default_member_status
        @default_member_status || 'pending'
      end
      
      def active_status=(status)
        @active_status = status
      end
      def active_status
        @active_status || 'active'
      end

      def confirmed_status=(status)
        @confirmed_status = status
      end
      def confirmed_status
        @confirmed_status || 'confirmed'
      end
      
      # layout to use in controller actions
      def layout=(layout)
        @layout = layout
      end
      def layout
        @layout
      end
      
      # helper method for checking if user logged in or not
      def logged_in_helper=(logged_in_helper)
        @logged_in_helper = logged_in_helper
      end
      def logged_in_helper
        @logged_in_helper
      end
            
    end
  end
end
