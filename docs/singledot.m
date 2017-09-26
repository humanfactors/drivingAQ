
		TYPEOF TASK (59)
		{
			LABEL="ON Dot 3"
			TASK_KIND="0"

			TYPEOF TASK (61)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (86)
				{
					IS_EXPANDED="1"
					LABEL="Rule: Go to subtask after Time seconds"

					TYPEOF CONDITION (SUPERIOR)
					{
						IS_EXPANDED="1"
						MODIFIER="BECOMES_TRUE"

						TYPEOF PARAMETER (OPERAND_1)
						{
							KIND="FUNCTION"

							TYPEOF FUNCTION (GET_SCENARIO_CLOCK)
							{
							}
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (OPERAND_2)
						{
							KIND="USER"
							VALUE="80"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (GOTO_TASK)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (TASK_NUMBER)
						{
							KIND="ENUM"
							VALUE="GOTO_NEXT_TASK"
							OWNER_FILE=""
						}
					}
				}
			}

			TYPEOF TASK (60)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (85)
				{
					IS_EXPANDED="1"
					LABEL="Rule: Turn on image"

					TYPEOF CONDITION (SUPERIOR)
					{
						IS_EXPANDED="1"
						MODIFIER="BECOMES_TRUE"

						TYPEOF PARAMETER (OPERAND_1)
						{
							KIND="FUNCTION"

							TYPEOF FUNCTION (GET_SCENARIO_CLOCK)
							{
							}
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (OPERAND_2)
						{
							KIND="USER"
							VALUE="80"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="28.57"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.99"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
						{
							KIND="USER"
							VALUE="0.70"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
						{
							KIND="USER"
							VALUE="1.3"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (IMAGE_FILENAME)
						{
							KIND="FILE"
							VALUE="Red dot.png"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (CHANNEL_NAME)
						{
							KIND="USER"
							VALUE="VISUAL_TRIPLEHEAD:1.1"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (DISPLAY_TIME)
						{
							KIND="USER"
							VALUE="0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (ADD_TO_VARIABLE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (VARIABLE_NAME)
						{
							KIND="VARIABLE"
							VALUE="60"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (FLOAT_VALUE)
						{
							KIND="USER"
							VALUE="1"
							OWNER_FILE=""
						}
					}
				}

				TYPEOF RULE (84)
				{
					IS_EXPANDED="1"
					LABEL="Rule: Turn off image (response made)"

					TYPEOF CONDITION (EQUAL)
					{
						MODIFIER="BECOMES_TRUE"

						TYPEOF PARAMETER (OPERAND_1)
						{
							KIND="FUNCTION"

							TYPEOF FUNCTION (GET_VHL_HORN)
							{

								TYPEOF PARAMETER (VHL_NUMBER)
								{
									KIND="VEHICLE"
									VALUE="0"
									OWNER_FILE=""
								}
							}
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (OPERAND_2)
						{
							KIND="USER"
							VALUE="1"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE_REMOVE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (IMAGE_FILENAME)
						{
							KIND="FILE"
							VALUE="Red dot.png"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (CHANNEL_NAME)
						{
							KIND="USER"
							VALUE="VISUAL_TRIPLEHEAD:1.1"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (ADD_TO_VARIABLE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (VARIABLE_NAME)
						{
							KIND="VARIABLE"
							VALUE="60"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (FLOAT_VALUE)
						{
							KIND="USER"
							VALUE="-1"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (GOTO_TASK)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (TASK_NUMBER)
						{
							KIND="ENUM"
							VALUE="GOTO_NEXT_TASK"
							OWNER_FILE=""
						}
					}
				}

				TYPEOF RULE (83)
				{
					IS_EXPANDED="1"
					LABEL="Rule: Turn off image (2s timeout)"

					TYPEOF CONDITION (SUPERIOR)
					{
						IS_EXPANDED="1"
						MODIFIER="BECOMES_TRUE"

						TYPEOF PARAMETER (OPERAND_1)
						{
							KIND="FUNCTION"

							TYPEOF FUNCTION (GET_SCENARIO_CLOCK)
							{
							}
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (OPERAND_2)
						{
							KIND="FUNCTION"

							TYPEOF FUNCTION (PLUS)
							{
								IS_EXPANDED="1"

								TYPEOF PARAMETER (OPERAND_1)
								{
									KIND="USER"
									VALUE="80"
									OWNER_FILE=""
								}

								TYPEOF PARAMETER (OPERAND_2)
								{
									KIND="USER"
									VALUE="2"
									OWNER_FILE=""
								}
							}
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE_REMOVE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (IMAGE_FILENAME)
						{
							KIND="FILE"
							VALUE="Red dot.png"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (CHANNEL_NAME)
						{
							KIND="USER"
							VALUE="VISUAL_TRIPLEHEAD:1.1"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (ADD_TO_VARIABLE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (VARIABLE_NAME)
						{
							KIND="VARIABLE"
							VALUE="60"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (FLOAT_VALUE)
						{
							KIND="USER"
							VALUE="-1"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (GOTO_TASK)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (TASK_NUMBER)
						{
							KIND="ENUM"
							VALUE="GOTO_NEXT_TASK"
							OWNER_FILE=""
						}
					}
				}
			}
		}
