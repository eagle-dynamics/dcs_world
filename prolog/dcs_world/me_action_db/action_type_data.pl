action_type_data(id(1),perform_task).
action_type_data(default_action_id(1),perform_task).
action_type_data(desc("Perform task.\nTask require time to perform and switch to another action in the list"),
		 perform_task).
action_type_data(display_name("Perform Task"),perform_task).
action_type_data(id(2),start_enroute_task).
action_type_data(default_action_id(21),start_enroute_task).
action_type_data(desc("Start en-route task.\nEn-route tasks are performed together with current task"),
		 start_enroute_task).
action_type_data(display_name("Start Enroute Task"),start_enroute_task).
action_type_data(id(3),perform_command).
action_type_data(default_action_id(36),perform_command).
action_type_data(desc("Performs a command for the group.\nCommand is a single action and take no time to perform"),
		 perform_command).
action_type_data(display_name("Perform Command"),perform_command).
action_type_data(id(4),set_option).
action_type_data(default_action_id(53),set_option).
action_type_data(desc("Set a behavior option.\nBehavior options affect the group behavior whatever task it performs"),
		 set_option).
action_type_data(display_name("Set Option"),set_option).
