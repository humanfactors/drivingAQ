<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<sce version="1.4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <Scenario>
    <name></name>
    <description></description>
    <online>1</online>
    <steadystate>0</steadystate>
    <Environment>
      <gravity>9.81</gravity>
      <waterVolumetricMass>1000</waterVolumetricMass>
      <DayTime>
        <day>1</day>
        <month>1</month>
        <year>2009</year>
        <startTime>43200</startTime>
        <dawnTime>21600</dawnTime>
        <duskTime>72000</duskTime>
      </DayTime>
      <Lighting>
        <lightMin>0</lightMin>
        <lightMax>1</lightMax>
        <dynamicLighting>1</dynamicLighting>
      </Lighting>
      <Weather>
        <snowLevel>0</snowLevel>
        <rainLevel>0</rainLevel>
        <cloudsLevel>0.2</cloudsLevel>
        <skySaturation>1</skySaturation>
        <atmosphericPressure>101500</atmosphericPressure>
        <airTemperature>293.15</airTemperature>
        <groundTemperature>293.15</groundTemperature>
        <hygrometry>0.5</hygrometry>
        <waterOnRoad>0</waterOnRoad>
      </Weather>
      <Panorama>
        <file></file>
        <scale>0.00225</scale>
      </Panorama>
    </Environment>
    <Aimsun>
      <replication>0</replication>
      <aimsunFile></aimsunFile>
    </Aimsun>
    <Visual>
      <Quality>
        <antiAliasing>8</antiAliasing>
        <anisotropicFiltering>8</anisotropicFiltering>
        <fadeLOD>0</fadeLOD>
      </Quality>
      <Viewing>
        <nearPlane>1</nearPlane>
        <farPlane>5000</farPlane>
        <terrainLODScale>1</terrainLODScale>
        <vehicleLODScale>1</vehicleLODScale>
      </Viewing>
      <RoadMarks>
        <mode></mode>
        <nodeName></nodeName>
        <Interval>
          <min>0</min>
          <max>0</max>
        </Interval>
      </RoadMarks>
      <Others>
        <refreshRate>60</refreshRate>
        <optimize>1</optimize>
        <viewMode></viewMode>
        <loadCache>0</loadCache>
      </Others>
      <Sfx>
        <fog>1</fog>
        <sky>1</sky>
        <fogHalo>1</fogHalo>
        <dazzleHalo>1</dazzleHalo>
      </Sfx>
    </Visual>
    <Ground>
      <name>pm_exp4_map.rnd</name>
      <infrastructure></infrastructure>
      <useSpecificSurfaceForTraffic>0</useSpecificSurfaceForTraffic>
    </Ground>
    <ProgressDlg>
      <showLog>1</showLog>
      <showLogInGraphsPane>0</showLogInGraphsPane>
      <showGraphs>0</showGraphs>
      <smoothGraphs>0</smoothGraphs>
      <showView>0</showView>
      <fullScreen>0</fullScreen>
      <playSound>0</playSound>
      <refreshRate>10</refreshRate>
      <ResultsGraph>
        <title>Graph</title>
        <tabName>Graph</tabName>
        <abcissa>131072</abcissa>
        <abcissaUnit>s</abcissaUnit>
      </ResultsGraph>
    </ProgressDlg>
    <Recording>
      <mode>AUTO</mode>
      <recordPath></recordPath>
      <ModelHandlerRecorder>
        <enable>0</enable>
        <enableTrafficRecording>0</enableTrafficRecording>
        <zipResultFile>0</zipResultFile>
        <isOneEvery>0</isOneEvery>
        <samplePeriod>0.1</samplePeriod>
        <oneEvery>1</oneEvery>
      </ModelHandlerRecorder>
      <ScanerNetRecorder/>
    </Recording>
    <PredefinedRun>
      <type>0</type>
    </PredefinedRun>
    <UserDataList/>
    <ScenarioScript>
      <script>
TYPEOF SCENARIO (0)
{
	IS_EXPANDED="1"
	LABEL="Main"
	FILE="AQ test part1_Main"
	TASK_KIND="0"

	TYPEOF INCLUDE (0)
	{
		IS_EXPANDED="1"
		ISA_INDEX="1"
		TASK_KIND="0"
		FILE="visualmetersDigital.inc"
	}

	TYPEOF INCLUDE (0)
	{
		IS_EXPANDED="1"
		ISA_INDEX="1"
		TASK_KIND="0"
		FILE="visualAnalog.inc"
	}

	TYPEOF VARIABLE (60)
	{
		LABEL="PDT dot image"
		TYPE="FLOAT"
		VALUE="0"
		INTERACTIVE_TYPE="INTEGER"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="-5"
		INTERACTIVE_MAX_VALUE="5"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (48)
	{
		LABEL="Lateral position"
		TYPE="FLOAT"
		VALUE="0.000000"
		INTERACTIVE_TYPE="FLOAT"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="-9999"
		INTERACTIVE_MAX_VALUE="9999"
		INTERACTIVE_STEP_VALUE="0.01"
	}

	TYPEOF VARIABLE (49)
	{
		LABEL="Lane no."
		TYPE="FLOAT"
		VALUE="0"
		INTERACTIVE_TYPE="INTEGER"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="-5"
		INTERACTIVE_MAX_VALUE="5"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF VARIABLE (50)
	{
		LABEL="Interruption image"
		TYPE="FLOAT"
		VALUE="0"
		INTERACTIVE_TYPE="INTEGER"
		IS_INITIALIZATION_NEEDED_AT_START="0"
		INTERACTIVE_MIN_VALUE="-5"
		INTERACTIVE_MAX_VALUE="5"
		INTERACTIVE_STEP_VALUE="1"
	}

	TYPEOF RULE (77)
	{
		LABEL="Rule - Lane number"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (SET_VARIABLE)
		{

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="49"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_LANE_ID)
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
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="4000"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="49"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (67)
	{
		LABEL="Rule - PDT response"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="2000"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="60"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (66)
	{
		LABEL="Rule - Lateral position"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (SET_VARIABLE)
		{

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="48"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_LANE_LATERAL_SHIFT)
				{
					IS_EXPANDED="1"

					TYPEOF PARAMETER (VHL_NUMBER)
					{
						KIND="VEHICLE"
						VALUE="0"
						OWNER_FILE=""
					}

					TYPEOF PARAMETER (VHL_LANE_LATERAL_SHIFT_ORIGIN)
					{
						KIND="ENUM"
						VALUE="VHL_LANE_LATERAL_SHIFT_ORIGIN_CENTER"
						OWNER_FILE=""
					}
				}
				OWNER_FILE=""
			}
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="3000"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="48"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF RULE (71)
	{
		LABEL="Rule - Interruption image"

		TYPEOF CONDITION (IS_TRUE)
		{
			IS_EXPANDED="1"
		}

		TYPEOF ACTION (SET_VARIABLE)
		{

			TYPEOF PARAMETER (VARIABLE_NAME)
			{
				KIND="VARIABLE"
				VALUE="49"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="FUNCTION"

				TYPEOF FUNCTION (GET_VHL_LANE_ID)
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
		}

		TYPEOF ACTION (EXPORT_CHANNEL)
		{
			IS_EXPANDED="1"

			TYPEOF PARAMETER (CHANNEL_ID)
			{
				KIND="USER"
				VALUE="5000"
				OWNER_FILE=""
			}

			TYPEOF PARAMETER (FLOAT_VALUE)
			{
				KIND="VARIABLE"
				VALUE="50"
				OWNER_FILE=""
			}
		}
	}

	TYPEOF TASK (69)
	{
		LABEL="Instructions INT OFF"
		TASK_KIND="0"

		TYPEOF RULE (96)
		{
			IS_EXPANDED="1"
			LABEL="Rule: "

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="2"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (SCREEN_XPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_YPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
				{
					KIND="USER"
					VALUE="50"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
				{
					KIND="USER"
					VALUE="70"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="AQ Exp NO Int block.PNG"
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
					VALUE="18"
					OWNER_FILE=""
				}
			}
		}

		TYPEOF RULE (95)
		{
			LABEL="Rule"

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="20"
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

	TYPEOF TASK (221)
	{
		IS_EXPANDED="1"
		LABEL="INT OFF"
		TASK_KIND="0"
	}

	TYPEOF TASK (89)
	{
		LABEL="PDT INT OFF"
		TASK_KIND="0"

		TYPEOF TASK (91)
		{
			LABEL="OFF Dot 28"
			TASK_KIND="0"

			TYPEOF TASK (93)
			{
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (129)
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
							VALUE="60"
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

			TYPEOF TASK (92)
			{
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (128)
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
							VALUE="60"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="10.71"
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

				TYPEOF RULE (127)
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

				TYPEOF RULE (126)
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
									VALUE="60"
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

		TYPEOF TASK (124)
		{
			LABEL="OFF Dot 29"
			TASK_KIND="0"

			TYPEOF TASK (126)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (173)
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
							VALUE="70"
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

			TYPEOF TASK (125)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (172)
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
							VALUE="70"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="17.86"
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

				TYPEOF RULE (171)
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

				TYPEOF RULE (170)
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
									VALUE="70"
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

		TYPEOF TASK (148)
		{
			LABEL="OFF Dot 30"
			TASK_KIND="0"

			TYPEOF TASK (150)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (205)
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

			TYPEOF TASK (149)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (204)
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

				TYPEOF RULE (203)
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

				TYPEOF RULE (202)
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

		TYPEOF TASK (151)
		{
			LABEL="OFF Dot 31"
			TASK_KIND="0"

			TYPEOF TASK (153)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (209)
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
							VALUE="90"
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

			TYPEOF TASK (152)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (208)
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
							VALUE="90"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="35.71"
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

				TYPEOF RULE (207)
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

				TYPEOF RULE (206)
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
									VALUE="90"
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

		TYPEOF TASK (154)
		{
			LABEL="OFF Dot 32"
			TASK_KIND="0"

			TYPEOF TASK (156)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (213)
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
							VALUE="100"
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

			TYPEOF TASK (155)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (212)
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
							VALUE="100"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="64.29"
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

				TYPEOF RULE (211)
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

				TYPEOF RULE (210)
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
									VALUE="100"
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

		TYPEOF TASK (157)
		{
			LABEL="OFF Dot 33"
			TASK_KIND="0"

			TYPEOF TASK (159)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (217)
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
							VALUE="110"
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

			TYPEOF TASK (158)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (216)
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
							VALUE="110"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="71.43"
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

				TYPEOF RULE (215)
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

				TYPEOF RULE (214)
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
									VALUE="110"
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

		TYPEOF TASK (160)
		{
			LABEL="OFF Dot 34"
			TASK_KIND="0"

			TYPEOF TASK (162)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (221)
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
							VALUE="120"
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

			TYPEOF TASK (161)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (220)
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
							VALUE="120"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="82.14"
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

				TYPEOF RULE (219)
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

				TYPEOF RULE (218)
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
									VALUE="120"
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

		TYPEOF TASK (163)
		{
			LABEL="OFF Dot 35"
			TASK_KIND="0"

			TYPEOF TASK (165)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (225)
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
							VALUE="130"
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

			TYPEOF TASK (164)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (224)
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
							VALUE="130"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="89.29"
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

				TYPEOF RULE (223)
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

				TYPEOF RULE (222)
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
									VALUE="130"
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

		TYPEOF TASK (166)
		{
			LABEL="OFF Dot 36"
			TASK_KIND="0"

			TYPEOF TASK (168)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (229)
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
							VALUE="140"
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

			TYPEOF TASK (167)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (228)
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
							VALUE="140"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (227)
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

				TYPEOF RULE (226)
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
									VALUE="140"
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

		TYPEOF TASK (94)
		{
			LABEL="OFF Dot 37"
			TASK_KIND="0"

			TYPEOF TASK (96)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (133)
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
							VALUE="150"
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

			TYPEOF TASK (95)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (132)
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
							VALUE="150"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (131)
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

				TYPEOF RULE (130)
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
									VALUE="150"
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

		TYPEOF TASK (97)
		{
			LABEL="OFF Dot 38"
			TASK_KIND="0"

			TYPEOF TASK (99)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (137)
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
							VALUE="160"
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

			TYPEOF TASK (98)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (136)
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
							VALUE="160"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (135)
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

				TYPEOF RULE (134)
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
									VALUE="160"
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

		TYPEOF TASK (100)
		{
			LABEL="OFF Dot 39"
			TASK_KIND="0"

			TYPEOF TASK (102)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (141)
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
							VALUE="170"
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

			TYPEOF TASK (101)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (140)
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
							VALUE="170"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (139)
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

				TYPEOF RULE (138)
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
									VALUE="170"
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

		TYPEOF TASK (103)
		{
			LABEL="OFF Dot 40"
			TASK_KIND="0"

			TYPEOF TASK (105)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (145)
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
							VALUE="180"
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

			TYPEOF TASK (104)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (144)
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
							VALUE="180"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (143)
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

				TYPEOF RULE (142)
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
									VALUE="180"
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

		TYPEOF TASK (106)
		{
			LABEL="OFF Dot 41"
			TASK_KIND="0"

			TYPEOF TASK (108)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (149)
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
							VALUE="190"
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

			TYPEOF TASK (107)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (148)
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
							VALUE="190"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (147)
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

				TYPEOF RULE (146)
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
									VALUE="190"
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

		TYPEOF TASK (109)
		{
			LABEL="OFF Dot 42"
			TASK_KIND="0"

			TYPEOF TASK (111)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (153)
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
							VALUE="200"
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

			TYPEOF TASK (110)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (152)
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
							VALUE="200"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (151)
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

				TYPEOF RULE (150)
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
									VALUE="200"
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

		TYPEOF TASK (112)
		{
			LABEL="OFF Dot 43"
			TASK_KIND="0"

			TYPEOF TASK (114)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (157)
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
							VALUE="210"
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

			TYPEOF TASK (113)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (156)
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
							VALUE="210"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (155)
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

				TYPEOF RULE (154)
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
									VALUE="210"
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

		TYPEOF TASK (115)
		{
			LABEL="OFF Dot 44"
			TASK_KIND="0"

			TYPEOF TASK (117)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (161)
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
							VALUE="220"
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

			TYPEOF TASK (116)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (160)
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
							VALUE="220"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (159)
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

				TYPEOF RULE (158)
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
									VALUE="220"
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

		TYPEOF TASK (118)
		{
			LABEL="OFF Dot 45"
			TASK_KIND="0"

			TYPEOF TASK (120)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (165)
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
							VALUE="230"
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

			TYPEOF TASK (119)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (164)
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
							VALUE="230"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (163)
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

				TYPEOF RULE (162)
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
									VALUE="230"
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

		TYPEOF TASK (121)
		{
			LABEL="OFF Dot 46"
			TASK_KIND="0"

			TYPEOF TASK (123)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (169)
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
							VALUE="240"
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

			TYPEOF TASK (122)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (168)
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
							VALUE="240"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (167)
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

				TYPEOF RULE (166)
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
									VALUE="240"
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

		TYPEOF TASK (127)
		{
			LABEL="OFF Dot 47"
			TASK_KIND="0"

			TYPEOF TASK (129)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (177)
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
							VALUE="250"
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

			TYPEOF TASK (128)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (176)
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
							VALUE="250"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (175)
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

				TYPEOF RULE (174)
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
									VALUE="250"
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

		TYPEOF TASK (130)
		{
			LABEL="OFF Dot 48"
			TASK_KIND="0"

			TYPEOF TASK (132)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (181)
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
							VALUE="260"
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

			TYPEOF TASK (131)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (180)
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
							VALUE="260"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (179)
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

				TYPEOF RULE (178)
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
									VALUE="260"
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

		TYPEOF TASK (133)
		{
			LABEL="OFF Dot 49"
			TASK_KIND="0"

			TYPEOF TASK (135)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (185)
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
							VALUE="270"
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

			TYPEOF TASK (134)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (184)
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
							VALUE="270"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (183)
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

				TYPEOF RULE (182)
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
									VALUE="270"
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

		TYPEOF TASK (136)
		{
			LABEL="OFF Dot 50"
			TASK_KIND="0"

			TYPEOF TASK (138)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (189)
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
							VALUE="280"
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

			TYPEOF TASK (137)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (188)
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
							VALUE="280"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (187)
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

				TYPEOF RULE (186)
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
									VALUE="280"
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

		TYPEOF TASK (139)
		{
			LABEL="OFF Dot 51"
			TASK_KIND="0"

			TYPEOF TASK (141)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (193)
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
							VALUE="290"
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

			TYPEOF TASK (140)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (192)
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
							VALUE="290"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (191)
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

				TYPEOF RULE (190)
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
									VALUE="290"
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

		TYPEOF TASK (142)
		{
			LABEL="OFF Dot 52"
			TASK_KIND="0"

			TYPEOF TASK (144)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (197)
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
							VALUE="300"
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

			TYPEOF TASK (143)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (196)
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
							VALUE="300"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (195)
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

				TYPEOF RULE (194)
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
									VALUE="300"
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

		TYPEOF TASK (145)
		{
			LABEL="OFF Dot 53"
			TASK_KIND="0"

			TYPEOF TASK (147)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (201)
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
							VALUE="310"
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

			TYPEOF TASK (146)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (200)
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
							VALUE="310"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.92"
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

				TYPEOF RULE (199)
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

				TYPEOF RULE (198)
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
									VALUE="310"
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

		TYPEOF TASK (90)
		{
			LABEL="Next block start time"
			TASK_KIND="0"

			TYPEOF RULE (125)
			{
				IS_EXPANDED="1"
				LABEL="Rule: Go to next task"

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
						VALUE="390.0"
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

	TYPEOF TASK (72)
	{
		LABEL="Instructions INT ON"
		TASK_KIND="0"

		TYPEOF RULE (124)
		{
			IS_EXPANDED="1"
			LABEL="Rule: "

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="2"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (SCREEN_XPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_YPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
				{
					KIND="USER"
					VALUE="50"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
				{
					KIND="USER"
					VALUE="70"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="AQ Exp Int block.PNG"
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
					VALUE="18"
					OWNER_FILE=""
				}
			}
		}

		TYPEOF RULE (123)
		{
			IS_EXPANDED="1"
			LABEL="Rule"

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="20"
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

	TYPEOF TASK (220)
	{
		LABEL="INT ON"
		TASK_KIND="0"

		TYPEOF RULE (297)
		{
			IS_EXPANDED="1"
			LABEL="Display int-ON"

			TYPEOF CONDITION (SUPEQUAL)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (CLOCK)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (CLOCK)
				{
					KIND="USER"
					VALUE="10"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (SCREEN_XPOSITION)
				{
					KIND="USER"
					VALUE="0"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_YPOSITION)
				{
					KIND="USER"
					VALUE="0"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
				{
					KIND="USER"
					VALUE="8.33333"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
				{
					KIND="USER"
					VALUE="5.37"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="int-ON.png"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (CHANNEL_NAME)
				{
					KIND="USER"
					VALUE="VISUAL_TRIPLEHEAD:1.2"
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
					VALUE="50"
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

		TYPEOF RULE (298)
		{
			IS_EXPANDED="1"
			LABEL="Remove int-ON"

			TYPEOF CONDITION (SUPEQUAL)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (CLOCK)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (CLOCK)
				{
					KIND="USER"
					VALUE="15"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE_REMOVE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="int-ON.png"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (CHANNEL_NAME)
				{
					KIND="USER"
					VALUE="VISUAL_TRIPLEHEAD:1.2"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (ADD_TO_VARIABLE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (VARIABLE_NAME)
				{
					KIND="VARIABLE"
					VALUE="50"
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

	TYPEOF TASK (170)
	{
		LABEL="PDT INT ON"
		TASK_KIND="0"

		TYPEOF TASK (172)
		{
			LABEL="ON Dot 54"
			TASK_KIND="0"

			TYPEOF TASK (174)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (236)
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
							VALUE="450"
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

			TYPEOF TASK (173)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (235)
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
							VALUE="450"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (234)
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

				TYPEOF RULE (233)
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
									VALUE="450"
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

		TYPEOF TASK (205)
		{
			LABEL="ON Dot 55"
			TASK_KIND="0"

			TYPEOF TASK (207)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (280)
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
							VALUE="460"
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

			TYPEOF TASK (206)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (279)
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
							VALUE="460"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (278)
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

				TYPEOF RULE (277)
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
									VALUE="460"
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

		TYPEOF TASK (315)
		{
			LABEL="ON Dot 56"
			TASK_KIND="0"

			TYPEOF TASK (317)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (425)
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
							VALUE="470"
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

			TYPEOF TASK (316)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (424)
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
							VALUE="470"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (423)
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

				TYPEOF RULE (422)
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
									VALUE="470"
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

		TYPEOF TASK (318)
		{
			LABEL="ON Dot 57"
			TASK_KIND="0"

			TYPEOF TASK (320)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (429)
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
							VALUE="480"
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

			TYPEOF TASK (319)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (428)
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
							VALUE="480"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (427)
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

				TYPEOF RULE (426)
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
									VALUE="480"
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

		TYPEOF TASK (321)
		{
			LABEL="ON Dot 58"
			TASK_KIND="0"

			TYPEOF TASK (323)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (433)
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
							VALUE="490"
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

			TYPEOF TASK (322)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (432)
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
							VALUE="490"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (431)
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

				TYPEOF RULE (430)
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
									VALUE="490"
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

		TYPEOF TASK (324)
		{
			LABEL="ON Dot 59"
			TASK_KIND="0"

			TYPEOF TASK (326)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (437)
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
							VALUE="500"
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

			TYPEOF TASK (325)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (436)
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
							VALUE="500"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (435)
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

				TYPEOF RULE (434)
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
									VALUE="500"
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

		TYPEOF TASK (327)
		{
			LABEL="ON Dot 60"
			TASK_KIND="0"

			TYPEOF TASK (329)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (441)
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
							VALUE="510"
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

			TYPEOF TASK (328)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (440)
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
							VALUE="510"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (439)
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

				TYPEOF RULE (438)
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
									VALUE="510"
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

		TYPEOF TASK (330)
		{
			LABEL="ON Dot 61"
			TASK_KIND="0"

			TYPEOF TASK (332)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (445)
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
							VALUE="520"
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

			TYPEOF TASK (331)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (444)
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
							VALUE="520"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (443)
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

				TYPEOF RULE (442)
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
									VALUE="520"
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

		TYPEOF TASK (333)
		{
			LABEL="ON Dot 62"
			TASK_KIND="0"

			TYPEOF TASK (335)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (449)
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
							VALUE="530"
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

			TYPEOF TASK (334)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (448)
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
							VALUE="530"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (447)
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

				TYPEOF RULE (446)
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
									VALUE="530"
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

		TYPEOF TASK (175)
		{
			LABEL="ON Dot 63"
			TASK_KIND="0"

			TYPEOF TASK (177)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (240)
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
							VALUE="540"
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

			TYPEOF TASK (176)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (239)
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
							VALUE="540"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (238)
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

				TYPEOF RULE (237)
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
									VALUE="540"
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

		TYPEOF TASK (178)
		{
			LABEL="ON Dot 64"
			TASK_KIND="0"

			TYPEOF TASK (180)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (244)
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
							VALUE="550"
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

			TYPEOF TASK (179)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (243)
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
							VALUE="550"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (242)
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

				TYPEOF RULE (241)
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
									VALUE="550"
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

		TYPEOF TASK (181)
		{
			LABEL="ON Dot 65"
			TASK_KIND="0"

			TYPEOF TASK (183)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (248)
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
							VALUE="560.0"
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

			TYPEOF TASK (182)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (247)
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
							VALUE="560.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (246)
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

				TYPEOF RULE (245)
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
									VALUE="560.0"
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

		TYPEOF TASK (184)
		{
			LABEL="ON Dot 66"
			TASK_KIND="0"

			TYPEOF TASK (186)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (252)
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
							VALUE="570"
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

			TYPEOF TASK (185)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (251)
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
							VALUE="570"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (250)
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

				TYPEOF RULE (249)
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
									VALUE="570"
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

		TYPEOF TASK (187)
		{
			LABEL="ON Dot 67"
			TASK_KIND="0"

			TYPEOF TASK (189)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (256)
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
							VALUE="580"
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

			TYPEOF TASK (188)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (255)
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
							VALUE="580"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (254)
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

				TYPEOF RULE (253)
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
									VALUE="580"
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

		TYPEOF TASK (190)
		{
			LABEL="ON Dot 68"
			TASK_KIND="0"

			TYPEOF TASK (192)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (260)
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
							VALUE="590"
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

			TYPEOF TASK (191)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (259)
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
							VALUE="590"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (258)
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

				TYPEOF RULE (257)
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
									VALUE="590"
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

		TYPEOF TASK (193)
		{
			LABEL="ON Dot 69"
			TASK_KIND="0"

			TYPEOF TASK (195)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (264)
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
							VALUE="600"
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

			TYPEOF TASK (194)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (263)
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
							VALUE="600"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (262)
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

				TYPEOF RULE (261)
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
									VALUE="600"
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

		TYPEOF TASK (196)
		{
			LABEL="ON Dot 70"
			TASK_KIND="0"

			TYPEOF TASK (198)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (268)
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
							VALUE="610"
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

			TYPEOF TASK (197)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (267)
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
							VALUE="610"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (266)
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

				TYPEOF RULE (265)
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
									VALUE="610"
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

		TYPEOF TASK (199)
		{
			LABEL="ON Dot 71"
			TASK_KIND="0"

			TYPEOF TASK (201)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (272)
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
							VALUE="620"
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

			TYPEOF TASK (200)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (271)
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
							VALUE="620"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="23.99"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.53"
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

				TYPEOF RULE (270)
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

				TYPEOF RULE (269)
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
									VALUE="620"
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

		TYPEOF TASK (202)
		{
			LABEL="ON Dot 72"
			TASK_KIND="0"

			TYPEOF TASK (204)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (276)
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
							VALUE="630"
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

			TYPEOF TASK (203)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (275)
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
							VALUE="630"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="30.5"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.19"
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

				TYPEOF RULE (274)
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

				TYPEOF RULE (273)
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
									VALUE="630"
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

		TYPEOF TASK (208)
		{
			LABEL="ON Dot 73"
			TASK_KIND="0"

			TYPEOF TASK (210)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (284)
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
							VALUE="640"
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

			TYPEOF TASK (209)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (283)
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
							VALUE="640"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="25.25"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.61"
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

				TYPEOF RULE (282)
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

				TYPEOF RULE (281)
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
									VALUE="640"
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

		TYPEOF TASK (211)
		{
			LABEL="ON Dot 74"
			TASK_KIND="0"

			TYPEOF TASK (213)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (288)
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
							VALUE="650"
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

			TYPEOF TASK (212)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (287)
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
							VALUE="650"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.72"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.41"
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

				TYPEOF RULE (286)
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

				TYPEOF RULE (285)
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
									VALUE="650"
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

		TYPEOF TASK (214)
		{
			LABEL="ON Dot 75"
			TASK_KIND="0"

			TYPEOF TASK (216)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (292)
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
							VALUE="660"
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

			TYPEOF TASK (215)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (291)
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
							VALUE="660"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="16.42"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.42"
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

				TYPEOF RULE (290)
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

				TYPEOF RULE (289)
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
									VALUE="660"
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

		TYPEOF TASK (217)
		{
			LABEL="ON Dot 76"
			TASK_KIND="0"

			TYPEOF TASK (219)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (296)
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
							VALUE="670"
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

			TYPEOF TASK (218)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (295)
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
							VALUE="670"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="17.3"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.13"
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

				TYPEOF RULE (294)
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

				TYPEOF RULE (293)
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
									VALUE="670"
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

		TYPEOF TASK (303)
		{
			LABEL="ON Dot 77"
			TASK_KIND="0"

			TYPEOF TASK (305)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (409)
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
							VALUE="680"
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

			TYPEOF TASK (304)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (408)
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
							VALUE="680"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="9.95"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.49"
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

				TYPEOF RULE (407)
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

				TYPEOF RULE (406)
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
									VALUE="680"
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

		TYPEOF TASK (306)
		{
			LABEL="ON Dot 78"
			TASK_KIND="0"

			TYPEOF TASK (308)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (413)
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
							VALUE="690"
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

			TYPEOF TASK (307)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (412)
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
							VALUE="690"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="10.53"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.07"
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

				TYPEOF RULE (411)
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

				TYPEOF RULE (410)
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
									VALUE="690"
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

		TYPEOF TASK (309)
		{
			LABEL="ON Dot 79"
			TASK_KIND="0"

			TYPEOF TASK (311)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (417)
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
							VALUE="700"
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

			TYPEOF TASK (310)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (416)
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
							VALUE="700"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="29.76"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (415)
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

				TYPEOF RULE (414)
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
									VALUE="700"
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

		TYPEOF TASK (312)
		{
			LABEL="ON Dot 80"
			TASK_KIND="0"

			TYPEOF TASK (314)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (421)
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
							VALUE="710"
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

			TYPEOF TASK (313)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (420)
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
							VALUE="710"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.51"
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

				TYPEOF RULE (419)
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

				TYPEOF RULE (418)
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
									VALUE="710"
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

		TYPEOF TASK (171)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (232)
			{
				IS_EXPANDED="1"
				LABEL="Rule: Go to next task"

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
						VALUE="775"
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

	TYPEOF TASK (70)
	{
		LABEL="Instructions INT OFF"
		TASK_KIND="0"

		TYPEOF RULE (13)
		{
			IS_EXPANDED="1"
			LABEL="Rule: "

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="2"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (SCREEN_XPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_YPOSITION)
				{
					KIND="USER"
					VALUE="25"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
				{
					KIND="USER"
					VALUE="50"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
				{
					KIND="USER"
					VALUE="70"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="AQ Exp NO Int block.PNG"
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
					VALUE="18"
					OWNER_FILE=""
				}
			}
		}

		TYPEOF RULE (12)
		{
			LABEL="Rule"

			TYPEOF CONDITION (SUPERIOR)
			{
				IS_EXPANDED="1"
				MODIFIER="BECOMES_TRUE"

				TYPEOF PARAMETER (OPERAND_1)
				{
					KIND="FUNCTION"

					TYPEOF FUNCTION (GET_TASK_CLOCK)
					{
					}
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (OPERAND_2)
				{
					KIND="USER"
					VALUE="20"
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

	TYPEOF TASK (222)
	{
		IS_EXPANDED="1"
		LABEL="INT OFF"
		TASK_KIND="0"
	}

	TYPEOF TASK (0)
	{
		LABEL="PDT INT OFF"
		TASK_KIND="0"

		TYPEOF TASK (3)
		{
			LABEL="OFF Dot 54"
			TASK_KIND="0"

			TYPEOF TASK (6)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (6)
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
							VALUE="830"
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

			TYPEOF TASK (5)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (5)
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
							VALUE="830"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (4)
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

				TYPEOF RULE (3)
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
									VALUE="830"
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

		TYPEOF TASK (7)
		{
			LABEL="OFF Dot 55"
			TASK_KIND="0"

			TYPEOF TASK (9)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (14)
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
							VALUE="840"
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

			TYPEOF TASK (8)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (9)
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
							VALUE="840"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (8)
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

				TYPEOF RULE (7)
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
									VALUE="840"
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

		TYPEOF TASK (10)
		{
			LABEL="OFF Dot 56"
			TASK_KIND="0"

			TYPEOF TASK (12)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (18)
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
							VALUE="850"
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

			TYPEOF TASK (11)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (17)
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
							VALUE="850"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (16)
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

				TYPEOF RULE (15)
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
									VALUE="850"
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

		TYPEOF TASK (13)
		{
			LABEL="OFF Dot 57"
			TASK_KIND="0"

			TYPEOF TASK (15)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (22)
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
							VALUE="860"
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

			TYPEOF TASK (14)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (21)
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
							VALUE="860"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (20)
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

				TYPEOF RULE (19)
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
									VALUE="860"
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

		TYPEOF TASK (16)
		{
			LABEL="OFF Dot 58"
			TASK_KIND="0"

			TYPEOF TASK (18)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (26)
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
							VALUE="870"
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

			TYPEOF TASK (17)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (25)
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
							VALUE="870"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (24)
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

				TYPEOF RULE (23)
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
									VALUE="870"
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

		TYPEOF TASK (19)
		{
			LABEL="OFF Dot 59"
			TASK_KIND="0"

			TYPEOF TASK (21)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (30)
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
							VALUE="880"
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

			TYPEOF TASK (20)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (29)
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
							VALUE="880"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (28)
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

				TYPEOF RULE (27)
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
									VALUE="880"
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

		TYPEOF TASK (22)
		{
			LABEL="OFF Dot 60"
			TASK_KIND="0"

			TYPEOF TASK (24)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (34)
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
							VALUE="890"
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

			TYPEOF TASK (23)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (33)
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
							VALUE="890"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (32)
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

				TYPEOF RULE (31)
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
									VALUE="890"
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

		TYPEOF TASK (25)
		{
			LABEL="OFF Dot 61"
			TASK_KIND="0"

			TYPEOF TASK (27)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (38)
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
							VALUE="900"
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

			TYPEOF TASK (26)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (37)
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
							VALUE="900"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (36)
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

				TYPEOF RULE (35)
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
									VALUE="900"
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

		TYPEOF TASK (28)
		{
			LABEL="OFF Dot 62"
			TASK_KIND="0"

			TYPEOF TASK (30)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (42)
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
							VALUE="910"
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

			TYPEOF TASK (29)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (41)
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
							VALUE="910"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (40)
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

				TYPEOF RULE (39)
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
									VALUE="910"
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

		TYPEOF TASK (31)
		{
			LABEL="OFF Dot 63"
			TASK_KIND="0"

			TYPEOF TASK (33)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (46)
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
							VALUE="920"
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

			TYPEOF TASK (32)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (45)
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
							VALUE="920"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (44)
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

				TYPEOF RULE (43)
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
									VALUE="920"
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

		TYPEOF TASK (34)
		{
			LABEL="OFF Dot 64"
			TASK_KIND="0"

			TYPEOF TASK (36)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (50)
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
							VALUE="930"
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

			TYPEOF TASK (35)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (49)
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
							VALUE="930"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (48)
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

				TYPEOF RULE (47)
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
									VALUE="930"
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

		TYPEOF TASK (37)
		{
			LABEL="OFF Dot 65"
			TASK_KIND="0"

			TYPEOF TASK (39)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (54)
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
							VALUE="940"
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

			TYPEOF TASK (38)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (53)
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
							VALUE="940"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (52)
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

				TYPEOF RULE (51)
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
									VALUE="940"
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

		TYPEOF TASK (40)
		{
			LABEL="OFF Dot 66"
			TASK_KIND="0"

			TYPEOF TASK (42)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (58)
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
							VALUE="950"
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

			TYPEOF TASK (41)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (57)
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
							VALUE="950"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (56)
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

				TYPEOF RULE (55)
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
									VALUE="950"
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

		TYPEOF TASK (43)
		{
			LABEL="OFF Dot 67"
			TASK_KIND="0"

			TYPEOF TASK (45)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (62)
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
							VALUE="960"
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

			TYPEOF TASK (44)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (61)
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
							VALUE="960"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (60)
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

				TYPEOF RULE (59)
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
									VALUE="960"
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

		TYPEOF TASK (46)
		{
			LABEL="OFF Dot 68"
			TASK_KIND="0"

			TYPEOF TASK (48)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (70)
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
							VALUE="970"
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

			TYPEOF TASK (47)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (65)
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
							VALUE="970"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (64)
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

				TYPEOF RULE (63)
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
									VALUE="970"
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

		TYPEOF TASK (49)
		{
			LABEL="OFF Dot 69"
			TASK_KIND="0"

			TYPEOF TASK (52)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (75)
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
							VALUE="980"
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

			TYPEOF TASK (50)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (74)
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
							VALUE="980"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (73)
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

				TYPEOF RULE (72)
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
									VALUE="980"
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

		TYPEOF TASK (53)
		{
			LABEL="OFF Dot 70"
			TASK_KIND="0"

			TYPEOF TASK (55)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (80)
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
							VALUE="990"
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

			TYPEOF TASK (54)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (79)
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
							VALUE="990"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (78)
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

				TYPEOF RULE (76)
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
									VALUE="990"
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

		TYPEOF TASK (56)
		{
			LABEL="OFF Dot 71"
			TASK_KIND="0"

			TYPEOF TASK (58)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (84)
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
							VALUE="1000"
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

			TYPEOF TASK (57)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (83)
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
							VALUE="1000"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (82)
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

				TYPEOF RULE (81)
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
									VALUE="1000"
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

		TYPEOF TASK (59)
		{
			LABEL="OFF Dot 72"
			TASK_KIND="0"

			TYPEOF TASK (61)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (88)
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
							VALUE="1010"
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

				TYPEOF RULE (87)
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
							VALUE="1010"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (86)
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

				TYPEOF RULE (85)
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
									VALUE="1010"
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

		TYPEOF TASK (62)
		{
			LABEL="OFF Dot 73"
			TASK_KIND="0"

			TYPEOF TASK (64)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (92)
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
							VALUE="1020"
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

			TYPEOF TASK (63)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (91)
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
							VALUE="1020"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (90)
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

				TYPEOF RULE (89)
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
									VALUE="1020"
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

		TYPEOF TASK (65)
		{
			LABEL="OFF Dot 74"
			TASK_KIND="0"

			TYPEOF TASK (67)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (98)
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
							VALUE="1030"
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

			TYPEOF TASK (66)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (97)
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
							VALUE="1030"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (94)
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

				TYPEOF RULE (93)
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
									VALUE="1030"
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

		TYPEOF TASK (68)
		{
			LABEL="OFF Dot 75"
			TASK_KIND="0"

			TYPEOF TASK (73)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (102)
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
							VALUE="1040"
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

			TYPEOF TASK (71)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (101)
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
							VALUE="1040"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (100)
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

				TYPEOF RULE (99)
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
									VALUE="1040"
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

		TYPEOF TASK (74)
		{
			LABEL="OFF Dot 76"
			TASK_KIND="0"

			TYPEOF TASK (76)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (106)
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
							VALUE="1050"
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

			TYPEOF TASK (75)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (105)
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
							VALUE="1050"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (104)
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

				TYPEOF RULE (103)
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
									VALUE="1050"
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

		TYPEOF TASK (77)
		{
			LABEL="OFF Dot 77"
			TASK_KIND="0"

			TYPEOF TASK (79)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (110)
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
							VALUE="1060"
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

			TYPEOF TASK (78)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (109)
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
							VALUE="1060"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (108)
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

				TYPEOF RULE (107)
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
									VALUE="1060"
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

		TYPEOF TASK (80)
		{
			LABEL="OFF Dot 78"
			TASK_KIND="0"

			TYPEOF TASK (82)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (114)
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
							VALUE="1070"
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

			TYPEOF TASK (81)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (113)
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
							VALUE="1070"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (112)
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

				TYPEOF RULE (111)
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
									VALUE="1070"
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

		TYPEOF TASK (83)
		{
			LABEL="OFF Dot 79"
			TASK_KIND="0"

			TYPEOF TASK (85)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (118)
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
							VALUE="1080"
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

			TYPEOF TASK (84)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (117)
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
							VALUE="1080"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (116)
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

				TYPEOF RULE (115)
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
									VALUE="1080"
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

		TYPEOF TASK (86)
		{
			LABEL="OFF Dot 80"
			TASK_KIND="0"

			TYPEOF TASK (88)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (122)
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
							VALUE="1090"
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

			TYPEOF TASK (87)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (121)
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
							VALUE="1090"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.71"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.95"
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

				TYPEOF RULE (120)
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

				TYPEOF RULE (119)
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
									VALUE="1090"
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

		TYPEOF TASK (1)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (2)
			{
				IS_EXPANDED="1"
				LABEL="Rule: Go to next task"

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
						VALUE="1160"
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

	TYPEOF TASK (51)
	{
		LABEL="End"
		TASK_KIND="0"

		TYPEOF RULE (69)
		{
			IS_EXPANDED="1"
			LABEL="Rule: End App"

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
					VALUE="1165"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (SET_IMAGE)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (SCREEN_XPOSITION)
				{
					KIND="USER"
					VALUE="0"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_YPOSITION)
				{
					KIND="USER"
					VALUE="0"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_WIDTH)
				{
					KIND="USER"
					VALUE="8.3333"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (SCREEN_PERCENTAGE_HEIGHT)
				{
					KIND="USER"
					VALUE="5.37"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (IMAGE_FILENAME)
				{
					KIND="FILE"
					VALUE="int-OFF.png"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (CHANNEL_NAME)
				{
					KIND="USER"
					VALUE="VISUAL_TRIPLEHEAD:1.6"
					OWNER_FILE=""
				}

				TYPEOF PARAMETER (DISPLAY_TIME)
				{
					KIND="USER"
					VALUE="5"
					OWNER_FILE=""
				}
			}
		}

		TYPEOF RULE (68)
		{
			IS_EXPANDED="1"
			LABEL="Rule: End Scenario"

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
					VALUE="1170"
					OWNER_FILE=""
				}
			}

			TYPEOF ACTION (GOTO_TASK)
			{
				IS_EXPANDED="1"

				TYPEOF PARAMETER (TASK_NUMBER)
				{
					KIND="ENUM"
					VALUE="GOTO_END_SCENARIO"
					OWNER_FILE=""
				}
			}
		}
	}
}
</script>
      <scriptName>Main</scriptName>
    </ScenarioScript>
    <Vehicle>
      <id>0</id>
      <driverId>0</driverId>
      <motionId>-1</motionId>
      <name>SuperMini</name>
      <modelName>SuperMini</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>MODELHANDLER</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>-1569.08176690979 8150.81137447575 0</position>
        <heading>5.16762971878052</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>14984.0778629586</abscissa>
          <gapInItnSystem>5.39999999867969</gapInItnSystem>
          <relativeHeading>3.14159250259399</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Callas>
          <activeConfiguration>-1</activeConfiguration>
          <modulesTimeout>30</modulesTimeout>
          <waterTemperature>353.15</waterTemperature>
          <oilTemperature>353.15</oilTemperature>
          <gearboxTemperature>373.15</gearboxTemperature>
          <tireTemperature>313.15</tireTemperature>
          <brakeTemperature>313.15</brakeTemperature>
          <damperTemperature>313.15</damperTemperature>
          <initBatteryCharge>1</initBatteryCharge>
          <numericalMethod>1</numericalMethod>
          <initialStepIncrement>0.0005</initialStepIncrement>
          <maxStepIncrement>0.002</maxStepIncrement>
          <staticStateComputation>0</staticStateComputation>
          <corneringStartType>0</corneringStartType>
          <initialTurnRadius>0</initialTurnRadius>
          <initialLateralAcceleration>0</initialLateralAcceleration>
          <initialSteeringAngle>0</initialSteeringAngle>
          <computeGroundBodyInteraction>0</computeGroundBodyInteraction>
          <computeGroundCanonInteraction>0</computeGroundCanonInteraction>
          <applyGroundBodyInteractionForces>0</applyGroundBodyInteractionForces>
          <regulateBrakePedal>0</regulateBrakePedal>
          <limitManualGearChoice>0</limitManualGearChoice>
          <autoClutch>1</autoClutch>
          <cutThrottleOnGearChange>1</cutThrottleOnGearChange>
          <toeHealOnDownshift>0</toeHealOnDownshift>
          <antiWheeling>0</antiWheeling>
          <isDelayShiftUpAfterUp>1</isDelayShiftUpAfterUp>
          <delayShiftUpAfterUp>0.5</delayShiftUpAfterUp>
          <isDelayShiftUpAfterDown>1</isDelayShiftUpAfterDown>
          <delayShiftUpAfterDown>0.5</delayShiftUpAfterDown>
          <isDelayShiftDownAfterUp>1</isDelayShiftDownAfterUp>
          <delayShiftDownAfterUp>0.5</delayShiftDownAfterUp>
          <isDelayShiftDownAfterDown>1</isDelayShiftDownAfterDown>
          <delayShiftDownAfterDown>0.5</delayShiftDownAfterDown>
          <isLockGearDuringCornering>0</isLockGearDuringCornering>
          <lockGearDuringCorneringAngle>3.14159265358979</lockGearDuringCorneringAngle>
          <isParallelComputation>0</isParallelComputation>
          <Hack>
            <newWheelDOF>0</newWheelDOF>
            <newMovementEquations>0</newMovementEquations>
            <ignoreSteeringSpeed>0</ignoreSteeringSpeed>
            <steeringFilterCF>0</steeringFilterCF>
            <steeringFilterSize>0</steeringFilterSize>
          </Hack>
          <CustomData/>
        </Callas>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>0</id>
      <process>DRIVER</process>
      <driverType>HumanDriver</driverType>
      <HumanDriver>
        <SteeringProcess></SteeringProcess>
        <ConfigurationFile>G27</ConfigurationFile>
      </HumanDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Source>
      <name>Source</name>
      <process>TRAFFIC</process>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-967.12659474982 5.36279704719831 0</position>
        <heading>0.113709196448326</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>12.3017058946934</abscissa>
          <gapInItnSystem>-1.89999999997573</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <TimeSlice>
        <permanent>1</permanent>
        <begin>0</begin>
        <end>0</end>
        <flow>100</flow>
        <generationFunction>UniformDistribution</generationFunction>
        <TimeSliceProfile>
          <id>normal_profile</id>
          <percentage>100</percentage>
        </TimeSliceProfile>
      </TimeSlice>
    </Source>
    <Sink>
      <name>Sink</name>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-1572.70256350029 8158.22285167853 0</position>
        <heading>5.16593360900879</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>14992.7790695671</abscissa>
          <gapInItnSystem>5.39999998962715</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Sink>
    <Source>
      <name>Source 1</name>
      <process>TRAFFIC</process>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-1573.27707351582 8151.42217986838 0</position>
        <heading>5.16718864440918</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>14987.0782790305</abscissa>
          <gapInItnSystem>1.89999999954245</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <TimeSlice>
        <permanent>1</permanent>
        <begin>0</begin>
        <end>0</end>
        <flow>100</flow>
        <generationFunction>UniformDistribution</generationFunction>
        <TimeSliceProfile>
          <id>normal_profile</id>
          <percentage>100</percentage>
        </TimeSliceProfile>
      </TimeSlice>
    </Source>
    <Vehicle>
      <id>1</id>
      <driverId>1</driverId>
      <motionId>-1</motionId>
      <name>Iveco_Irisbus</name>
      <modelName>Iveco_Irisbus</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>-1072.59789766704 7226.56776579187 0.078703402561002</position>
        <heading>5.24814748764038</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>13935.7324874431</abscissa>
          <gapInItnSystem>1.89999999983197</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>1</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>1</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>18.0555555555556</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.26</overtakeRisk>
        <speedLimitRisk>0.95</speedLimitRisk>
      </TrafficDriver>
      <AirplaneDriver>
        <Trajectory>
          <type>0</type>
          <notes></notes>
          <isWithObstacles>0</isWithObstacles>
          <XYTrajectory>
            <isClosed>0</isClosed>
            <interpolationType>0</interpolationType>
          </XYTrajectory>
          <CurvatureTrajectory>
            <initialHeading>0</initialHeading>
            <initialPosition>0 0</initialPosition>
          </CurvatureTrajectory>
        </Trajectory>
      </AirplaneDriver>
    </Driver>
    <Vehicle>
      <id>2</id>
      <driverId>2</driverId>
      <motionId>-1</motionId>
      <name>Kawasaki_ZX9R</name>
      <modelName>Kawasaki_ZX9R</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>-621.614859172249 6548.38651012539 0.979986881782534</position>
        <heading>5.35830879211426</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>13121.1195239272</abscissa>
          <gapInItnSystem>5.39999999701878</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model/>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>2</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>3.41963271857054</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.459816359285269</overtakeRisk>
        <speedLimitRisk>1.09196327185705</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>3</id>
      <driverId>3</driverId>
      <motionId>-1</motionId>
      <name>Citroen_C4_2010</name>
      <modelName>Citroen_C4_2010</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>667.433795186373 5808.81141987441 0</position>
        <heading>3.13209104537964</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>11566.0038738709</abscissa>
          <gapInItnSystem>-5.39999999759372</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>3</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>38.8888888888889</maxSpeed>
        <safetyTime>3.44288467562224</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.471442337811118</overtakeRisk>
        <speedLimitRisk>1.09428846756222</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>4</id>
      <driverId>4</driverId>
      <motionId>-1</motionId>
      <name>Citroen_DS3</name>
      <modelName>Citroen_DS3</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>1767.79828981919 4962.87063323174 -0.330022446554294</position>
        <heading>4.58806943893433</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>9961.68140023574</abscissa>
          <gapInItnSystem>1.899999990675</gapInItnSystem>
          <relativeHeading>3.14159250259399</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>4</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>36.4018752477236</maxSpeed>
        <safetyTime>2.80233754459025</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.151168772295124</overtakeRisk>
        <speedLimitRisk>1.03023375445902</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>5</id>
      <driverId>5</driverId>
      <motionId>-1</motionId>
      <name>Honda_CRV_Grey_US</name>
      <modelName>Honda_CRV_Grey_US</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2517.08732674141 3936.49109532809 0</position>
        <heading>5.82971000671387</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>8515.18081198154</abscissa>
          <gapInItnSystem>1.89999999999426</gapInItnSystem>
          <relativeHeading>3.14159274101257</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>5</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>33.7056014511577</maxSpeed>
        <safetyTime>2.31700826120838</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.0914958693958095</overtakeRisk>
        <speedLimitRisk>0.981700826120838</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>6</id>
      <driverId>6</driverId>
      <motionId>-1</motionId>
      <name>Opel_Astra_Red</name>
      <modelName>Opel_Astra_Red</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>2524.13901760042 3924.9323942184 0</position>
        <heading>2.68789839744568</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>8503.77923090839</abscissa>
          <gapInItnSystem>-5.39999999996892</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>6</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>33.1159339034044</maxSpeed>
        <safetyTime>2.21086810261279</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.144565948693606</overtakeRisk>
        <speedLimitRisk>0.971086810261279</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>8</id>
      <driverId>8</driverId>
      <motionId>-1</motionId>
      <name>Peugeot_407</name>
      <modelName>Peugeot_407</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>3382.7232567768 2675.7246414297 0</position>
        <heading>4.52433681488037</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>6813.34481601437</abscissa>
          <gapInItnSystem>1.89999999989241</gapInItnSystem>
          <relativeHeading>3.14159250259399</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>8</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>37.5826196281455</maxSpeed>
        <safetyTime>3.01487153306619</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.257435766533094</overtakeRisk>
        <speedLimitRisk>1.05148715330662</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>9</id>
      <driverId>9</driverId>
      <motionId>-1</motionId>
      <name>Renault_Midlum</name>
      <modelName>Renault_Midlum</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>3575.4725994685 1881.33829352974 0</position>
        <heading>2.2113082408905</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>5953.12552820848</abscissa>
          <gapInItnSystem>-1.89999999967886</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>9</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>36.7336281576094</maxSpeed>
        <safetyTime>2.86205306836969</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.181026534184847</overtakeRisk>
        <speedLimitRisk>1.03620530683697</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>10</id>
      <driverId>10</driverId>
      <motionId>-1</motionId>
      <name>Renault_Premium</name>
      <modelName>Renault_Premium</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>3111.86343404935 526.780506726227 0</position>
        <heading>0.167226552963257</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>4214.98449777264</abscissa>
          <gapInItnSystem>-5.39999988214683</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>10</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>34.4025723331957</maxSpeed>
        <safetyTime>2.44246301997522</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.0287684900123886</overtakeRisk>
        <speedLimitRisk>0.994246301997522</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>11</id>
      <driverId>11</driverId>
      <motionId>-1</motionId>
      <name>Renault_Megane3_Grey</name>
      <modelName>Renault_Megane3_Grey</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>1810.60362531025 88.3181609127005 1.65308475899589</position>
        <heading>0.116915240883827</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>2811.08981774146</abscissa>
          <gapInItnSystem>-1.89999999574342</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>11</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>36.488261834605</maxSpeed>
        <safetyTime>2.81788713022891</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>0.158943565114453</overtakeRisk>
        <speedLimitRisk>1.03178871302289</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Vehicle>
      <id>12</id>
      <driverId>12</driverId>
      <motionId>-1</motionId>
      <name>Holden_Astra_Red_UK</name>
      <modelName>Holden_Astra_Red_UK</modelName>
      <modelColor>0 0 0</modelColor>
      <decorationName></decorationName>
      <process>TRAFFIC</process>
      <initialDistOnTrajectory>0</initialDistOnTrajectory>
      <initialSpeed>0</initialSpeed>
      <state>0</state>
      <trailerId>-1</trailerId>
      <initEngineRunning>1</initEngineRunning>
      <recomputeRestitutionMovement>1</recomputeRestitutionMovement>
      <ObjectPosition>
        <position>155.205675335664 124.983862510191 0.915435290989304</position>
        <heading>0.0907003507018089</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>1139.85806570585</abscissa>
          <gapInItnSystem>-5.39999999993723</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <ItineraryRoadXml>
        <endBehaviour>0</endBehaviour>
      </ItineraryRoadXml>
      <StopCriteria>
        <finalDistance>100000</finalDistance>
        <finalTime>3600</finalTime>
        <stopFinalDistance>0</stopFinalDistance>
        <stopFinalTime>0</stopFinalTime>
        <stopMinSpeed>0</stopMinSpeed>
        <stopMaxSpeed>0</stopMaxSpeed>
        <stopSideslipAngleSpeed>0</stopSideslipAngleSpeed>
        <stopStableMovement>0</stopStableMovement>
        <stopSpin>0</stopSpin>
        <stopLateralAccelerationPeek>0</stopLateralAccelerationPeek>
        <stopWheelLift>0</stopWheelLift>
        <stopStall>0</stopStall>
        <stopTrajectoryError>0</stopTrajectoryError>
        <stopSideslipAngle>0</stopSideslipAngle>
        <stopStandstill>0</stopStandstill>
        <stopCanonContact>0</stopCanonContact>
        <stopConeCollision>0</stopConeCollision>
        <minSpeed>0.277777777777778</minSpeed>
        <maxSpeed>111.111111111111</maxSpeed>
        <maxSideslipAngleSpeed>0.349065850398866</maxSideslipAngleSpeed>
        <maxTrajectoryError>3</maxTrajectoryError>
        <maxSideslipAngle>0.261799387799149</maxSideslipAngle>
      </StopCriteria>
      <Model>
        <Simple/>
      </Model>
      <Swarm>
        <queen>-1</queen>
        <queenDirectionFactor>0.3</queenDirectionFactor>
        <frontAppearFactor>0.75</frontAppearFactor>
        <appearFrontRadius>500</appearFrontRadius>
        <disappearFrontRadius>1000</disappearFrontRadius>
        <appearBackRadius>250</appearBackRadius>
        <disappearBackRadius>500</disappearBackRadius>
      </Swarm>
      <Equipments>
        <sensorConfigurationName></sensorConfigurationName>
      </Equipments>
    </Vehicle>
    <Driver>
      <id>12</id>
      <process>TRAFFIC</process>
      <driverType>TrafficDriver</driverType>
      <TrafficDriver>
        <norm>NormalDriver</norm>
        <maxSpeed>27.7777777777778</maxSpeed>
        <safetyTime>2</safetyTime>
        <priorityObserving>1</priorityObserving>
        <signObserving>1</signObserving>
        <stayOnLane>0</stayOnLane>
        <overtakeRisk>-0.5</overtakeRisk>
        <speedLimitRisk>0.849530336565616</speedLimitRisk>
      </TrafficDriver>
    </Driver>
    <Sink>
      <name>Sink 1</name>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-978.008792443779 4.11670982689483 0</position>
        <heading>0.114475317299366</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>1.80024964312587</abscissa>
          <gapInItnSystem>-1.89999999981594</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Sink>
    <Source>
      <name>Source 2</name>
      <process>TRAFFIC</process>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-967.980472172077 8.78802770314801 0</position>
        <heading>0.113729357719421</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>11.7016226803181</abscissa>
          <gapInItnSystem>-5.39999999993128</gapInItnSystem>
          <relativeHeading>0</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
      <TimeSlice>
        <permanent>1</permanent>
        <begin>0</begin>
        <end>0</end>
        <flow>100</flow>
        <generationFunction>UniformDistribution</generationFunction>
        <TimeSliceProfile>
          <id>normal_profile</id>
          <percentage>100</percentage>
        </TimeSliceProfile>
      </TimeSlice>
    </Source>
  </Scenario>

</sce>
