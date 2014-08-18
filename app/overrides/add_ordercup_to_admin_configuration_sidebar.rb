Deface::Override.new(virtual_path:  "spree/admin/shared/_configuration_menu",
                     name:          "ordercup_admin_configurations_menu",
                     insert_top: "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     text:          "<%= configurations_sidebar_menu_item 'Connect to OrderCup', admin_ordercup_index_path %>",
                     disabled:      false)



