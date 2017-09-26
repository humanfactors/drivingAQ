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
	FILE="exp1-subj1-part2_Main"
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

	TYPEOF TASK (1)
	{
		LABEL="PDT Baseline"
		TASK_KIND="0"

		TYPEOF TASK (118)
		{
			LABEL="Dot 1"
			TASK_KIND="0"

			TYPEOF TASK (120)
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
							VALUE="8"
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
							VALUE="8"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="27.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.8"
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

				TYPEOF RULE (218)
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

				TYPEOF RULE (217)
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
									VALUE="8"
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
			LABEL="Dot 2"
			TASK_KIND="0"

			TYPEOF TASK (117)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (216)
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
							VALUE="16"
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

				TYPEOF RULE (215)
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
							VALUE="16"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="14.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.3"
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

				TYPEOF RULE (214)
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

				TYPEOF RULE (213)
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
									VALUE="16"
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
			LABEL="Dot 3"
			TASK_KIND="0"

			TYPEOF TASK (114)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (212)
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
							VALUE="30"
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

				TYPEOF RULE (211)
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
							VALUE="30"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.2"
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

				TYPEOF RULE (210)
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

				TYPEOF RULE (187)
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
									VALUE="30"
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
			IS_EXPANDED="1"
			LABEL="Dot 4"
			TASK_KIND="0"

			TYPEOF TASK (111)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (186)
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
							VALUE="42"
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

				TYPEOF RULE (185)
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
							VALUE="42"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="17.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62"
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

				TYPEOF RULE (184)
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

				TYPEOF RULE (183)
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
									VALUE="42"
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
			IS_EXPANDED="1"
			LABEL="Dot 5"
			TASK_KIND="0"

			TYPEOF TASK (108)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (182)
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
							VALUE="48"
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

				TYPEOF RULE (181)
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
							VALUE="48"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.9"
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

				TYPEOF RULE (136)
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

				TYPEOF RULE (135)
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
									VALUE="48"
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
			IS_EXPANDED="1"
			LABEL="Dot 6"
			TASK_KIND="0"

			TYPEOF TASK (105)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (134)
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
							VALUE="58"
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

				TYPEOF RULE (133)
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
							VALUE="58"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="30.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.6"
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

				TYPEOF RULE (132)
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

				TYPEOF RULE (131)
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
									VALUE="58"
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
			IS_EXPANDED="1"
			LABEL="Dot 7"
			TASK_KIND="0"

			TYPEOF TASK (102)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (130)
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
							VALUE="66"
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

				TYPEOF RULE (129)
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
							VALUE="66"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.1"
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

				TYPEOF RULE (128)
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

				TYPEOF RULE (127)
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
									VALUE="66"
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
			IS_EXPANDED="1"
			LABEL="Dot 8"
			TASK_KIND="0"

			TYPEOF TASK (99)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (126)
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
							VALUE="82"
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

				TYPEOF RULE (125)
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
							VALUE="82"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.2"
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

				TYPEOF RULE (124)
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

				TYPEOF RULE (123)
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
									VALUE="82"
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
			IS_EXPANDED="1"
			LABEL="Dot 9"
			TASK_KIND="0"

			TYPEOF TASK (96)
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
							VALUE="92"
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
							VALUE="92"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.5"
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
									VALUE="92"
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
			IS_EXPANDED="1"
			LABEL="Dot 10"
			TASK_KIND="0"

			TYPEOF TASK (93)
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
							VALUE="108"
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

			TYPEOF TASK (91)
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
							VALUE="108"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="9.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.6"
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
									VALUE="108"
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

		TYPEOF TASK (87)
		{
			IS_EXPANDED="1"
			LABEL="Dot 11"
			TASK_KIND="0"

			TYPEOF TASK (89)
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

			TYPEOF TASK (88)
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
							VALUE="28.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.2"
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

		TYPEOF TASK (84)
		{
			IS_EXPANDED="1"
			LABEL="Dot 12"
			TASK_KIND="0"

			TYPEOF TASK (86)
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
							VALUE="134"
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

			TYPEOF TASK (85)
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
							VALUE="134"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="21.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62"
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

				TYPEOF RULE (105)
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
									VALUE="134"
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

		TYPEOF TASK (79)
		{
			IS_EXPANDED="1"
			LABEL="Dot 13"
			TASK_KIND="0"

			TYPEOF TASK (83)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (104)
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
							VALUE="146"
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

			TYPEOF TASK (80)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (103)
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
							VALUE="146"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="29.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.8"
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

				TYPEOF RULE (102)
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

				TYPEOF RULE (101)
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
									VALUE="146"
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

		TYPEOF TASK (45)
		{
			IS_EXPANDED="1"
			LABEL="Dot 14"
			TASK_KIND="0"

			TYPEOF TASK (69)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (90)
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
							VALUE="156"
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

			TYPEOF TASK (68)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (89)
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
							VALUE="156"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="30.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.6"
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

				TYPEOF RULE (88)
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

				TYPEOF RULE (87)
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
									VALUE="156"
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

		TYPEOF TASK (42)
		{
			IS_EXPANDED="1"
			LABEL="Dot 15"
			TASK_KIND="0"

			TYPEOF TASK (44)
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
							VALUE="162"
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

			TYPEOF TASK (43)
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
							VALUE="162"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="22.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.8"
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
									VALUE="162"
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

		TYPEOF TASK (39)
		{
			IS_EXPANDED="1"
			LABEL="Dot 16"
			TASK_KIND="0"

			TYPEOF TASK (41)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (82)
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
							VALUE="176"
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

			TYPEOF TASK (40)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (81)
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
							VALUE="176"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="11.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.5"
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

				TYPEOF RULE (80)
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

				TYPEOF RULE (79)
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
									VALUE="176"
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

		TYPEOF TASK (36)
		{
			IS_EXPANDED="1"
			LABEL="Dot 17"
			TASK_KIND="0"

			TYPEOF TASK (38)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (78)
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
							VALUE="182"
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

			TYPEOF TASK (37)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (76)
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
							VALUE="182"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="7.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.7"
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

				TYPEOF RULE (75)
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

				TYPEOF RULE (74)
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
									VALUE="182"
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
			IS_EXPANDED="1"
			LABEL="Dot 18"
			TASK_KIND="0"

			TYPEOF TASK (34)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (73)
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

			TYPEOF TASK (32)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (72)
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
							VALUE="22.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.1"
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

				TYPEOF RULE (70)
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

				TYPEOF RULE (49)
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

		TYPEOF TASK (28)
		{
			IS_EXPANDED="1"
			LABEL="Dot 19"
			TASK_KIND="0"

			TYPEOF TASK (30)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (48)
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

			TYPEOF TASK (29)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (47)
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
							VALUE="25.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.3"
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

				TYPEOF RULE (30)
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

				TYPEOF RULE (29)
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

		TYPEOF TASK (25)
		{
			IS_EXPANDED="1"
			LABEL="Dot 20"
			TASK_KIND="0"

			TYPEOF TASK (27)
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
							VALUE="216"
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
							VALUE="216"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="25.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.3"
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
									VALUE="216"
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
			IS_EXPANDED="1"
			LABEL="Dot 21"
			TASK_KIND="0"

			TYPEOF TASK (20)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (9)
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
							VALUE="228"
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

			TYPEOF TASK (12)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (8)
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
							VALUE="228"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="8.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.6"
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
									VALUE="228"
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
			IS_EXPANDED="1"
			LABEL="Dot 22"
			TASK_KIND="0"

			TYPEOF TASK (67)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (180)
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
							VALUE="234"
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

				TYPEOF RULE (179)
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
							VALUE="234"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="14.6"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.3"
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

				TYPEOF RULE (178)
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

				TYPEOF RULE (177)
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
									VALUE="234"
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
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (137)
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
	}

	TYPEOF TASK (47)
	{
		LABEL="INT 6"
		TASK_KIND="0"

		TYPEOF RULE (138)
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
					VALUE="0"
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

		TYPEOF RULE (139)
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
					VALUE="5"
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

	TYPEOF TASK (5)
	{
		LABEL="PDT post-INT 6"
		TASK_KIND="0"

		TYPEOF TASK (303)
		{
			LABEL="Dot 23"
			TASK_KIND="0"

			TYPEOF TASK (304)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (404)
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
							VALUE="302"
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

			TYPEOF TASK (305)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (407)
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
							VALUE="302"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.41"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.53"
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

				TYPEOF RULE (405)
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
									VALUE="302"
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
			LABEL="Dot 24"
			TASK_KIND="0"

			TYPEOF TASK (307)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (408)
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
							VALUE="316"
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

			TYPEOF TASK (308)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (411)
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
							VALUE="316"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.41"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.74"
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

				TYPEOF RULE (409)
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
									VALUE="316"
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
			LABEL="Dot 25"
			TASK_KIND="0"

			TYPEOF TASK (310)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (412)
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
							VALUE="326"
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

			TYPEOF TASK (311)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (415)
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
							VALUE="326"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="27.23"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.62"
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

				TYPEOF RULE (413)
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
									VALUE="326"
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
			LABEL="Dot 26"
			TASK_KIND="0"

			TYPEOF TASK (313)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (416)
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
							VALUE="336"
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

			TYPEOF TASK (314)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (419)
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
							VALUE="336"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.87"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.76"
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

				TYPEOF RULE (417)
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
									VALUE="336"
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
			LABEL="Dot 27"
			TASK_KIND="0"

			TYPEOF TASK (316)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (420)
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
							VALUE="350"
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

			TYPEOF TASK (317)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (423)
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
							VALUE="350"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.92"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.11"
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

				TYPEOF RULE (421)
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
									VALUE="350"
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

		TYPEOF TASK (9)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (22)
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
						VALUE="360.0"
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

	TYPEOF TASK (4)
	{
		IS_EXPANDED="1"
		LABEL="INT 7"
		TASK_KIND="0"

		TYPEOF RULE (12)
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
					VALUE="0"
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

		TYPEOF RULE (13)
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
					VALUE="5"
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

	TYPEOF TASK (35)
	{
		LABEL="PDT post-INT 7"
		TASK_KIND="0"

		TYPEOF TASK (318)
		{
			LABEL="Dot 28"
			TASK_KIND="0"

			TYPEOF TASK (319)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (424)
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
							VALUE="426.0"
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

			TYPEOF TASK (320)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (427)
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
							VALUE="426.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="10.79"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.25"
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

				TYPEOF RULE (425)
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
									VALUE="426.0"
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
			LABEL="Dot 29"
			TASK_KIND="0"

			TYPEOF TASK (322)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (428)
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
							VALUE="432.0"
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

			TYPEOF TASK (323)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (431)
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
							VALUE="432.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="20.87"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.05"
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

				TYPEOF RULE (429)
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
									VALUE="432.0"
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
			LABEL="Dot 30"
			TASK_KIND="0"

			TYPEOF TASK (325)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (432)
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
							VALUE="438.0"
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

			TYPEOF TASK (326)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (435)
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
							VALUE="438.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.3"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.78"
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

				TYPEOF RULE (433)
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
									VALUE="438.0"
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
			LABEL="Dot 31"
			TASK_KIND="0"

			TYPEOF TASK (328)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (436)
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
							VALUE="448.0"
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

			TYPEOF TASK (329)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (439)
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
							VALUE="448.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="13.52"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.8"
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

				TYPEOF RULE (437)
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
									VALUE="448.0"
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
			LABEL="Dot 32"
			TASK_KIND="0"

			TYPEOF TASK (331)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (440)
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
							VALUE="460.0"
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

			TYPEOF TASK (332)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (443)
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
							VALUE="460.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="25.36"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.57"
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

				TYPEOF RULE (441)
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
									VALUE="460.0"
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
			LABEL="Dot 33"
			TASK_KIND="0"

			TYPEOF TASK (334)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (444)
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
							VALUE="466.0"
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

			TYPEOF TASK (335)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (447)
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
							VALUE="466.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="12.01"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.08"
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

				TYPEOF RULE (445)
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
									VALUE="466.0"
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

		TYPEOF TASK (336)
		{
			LABEL="Dot 34"
			TASK_KIND="0"

			TYPEOF TASK (337)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (448)
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
							VALUE="472.0"
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

			TYPEOF TASK (338)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (451)
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
							VALUE="472.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.63"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.84"
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

				TYPEOF RULE (449)
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

				TYPEOF RULE (450)
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
									VALUE="472.0"
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

		TYPEOF TASK (58)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (159)
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
						VALUE="480.0"
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
		LABEL="INT 8"
		TASK_KIND="0"

		TYPEOF RULE (14)
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
					VALUE="0"
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

		TYPEOF RULE (18)
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
					VALUE="5"
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

	TYPEOF TASK (62)
	{
		IS_EXPANDED="1"
		LABEL="PDT post-INT 8"
		TASK_KIND="0"

		TYPEOF TASK (339)
		{
			LABEL="Dot 35"
			TASK_KIND="0"

			TYPEOF TASK (340)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (452)
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
							VALUE="544.0"
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

			TYPEOF TASK (341)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (455)
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
							VALUE="544.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="14.5"
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

				TYPEOF RULE (453)
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

				TYPEOF RULE (454)
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
									VALUE="544.0"
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

		TYPEOF TASK (342)
		{
			LABEL="Dot 36"
			TASK_KIND="0"

			TYPEOF TASK (343)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (456)
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

			TYPEOF TASK (344)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (459)
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
							VALUE="13.96"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.9"
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

				TYPEOF RULE (457)
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

				TYPEOF RULE (458)
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

		TYPEOF TASK (345)
		{
			LABEL="Dot 37"
			TASK_KIND="0"

			TYPEOF TASK (346)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (460)
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
							VALUE="570.0"
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

			TYPEOF TASK (347)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (463)
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
							VALUE="570.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="21.55"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.89"
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

				TYPEOF RULE (461)
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

				TYPEOF RULE (462)
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
									VALUE="570.0"
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

		TYPEOF TASK (348)
		{
			LABEL="Dot 38"
			TASK_KIND="0"

			TYPEOF TASK (349)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (464)
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
							VALUE="578.0"
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

			TYPEOF TASK (350)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (467)
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
							VALUE="578.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.92"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.35"
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

				TYPEOF RULE (465)
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

				TYPEOF RULE (466)
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
									VALUE="578.0"
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

		TYPEOF TASK (351)
		{
			LABEL="Dot 39"
			TASK_KIND="0"

			TYPEOF TASK (352)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (468)
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
							VALUE="594.0"
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

			TYPEOF TASK (353)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (471)
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
							VALUE="594.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="13.73"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="58.41"
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

				TYPEOF RULE (469)
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

				TYPEOF RULE (470)
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
									VALUE="594.0"
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

		TYPEOF TASK (354)
		{
			LABEL="Dot 40"
			TASK_KIND="0"

			TYPEOF TASK (355)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (472)
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
							VALUE="600.0"
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

			TYPEOF TASK (356)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (475)
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
							VALUE="600.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="24.86"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.33"
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

				TYPEOF RULE (473)
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

				TYPEOF RULE (474)
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
									VALUE="600.0"
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

		TYPEOF TASK (357)
		{
			LABEL="Dot 41"
			TASK_KIND="0"

			TYPEOF TASK (358)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (476)
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
							VALUE="614.0"
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

			TYPEOF TASK (359)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (479)
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
							VALUE="614.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="18.1"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.26"
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

				TYPEOF RULE (477)
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

				TYPEOF RULE (478)
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
									VALUE="614.0"
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

		TYPEOF TASK (360)
		{
			LABEL="Dot 42"
			TASK_KIND="0"

			TYPEOF TASK (361)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (480)
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
							VALUE="624.0"
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

			TYPEOF TASK (362)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (483)
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
							VALUE="624.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="26.78"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.49"
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

				TYPEOF RULE (481)
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

				TYPEOF RULE (482)
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
									VALUE="624.0"
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

		TYPEOF TASK (73)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (198)
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
						VALUE="630.0"
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

	TYPEOF TASK (8)
	{
		LABEL="INT 9"
		TASK_KIND="0"

		TYPEOF RULE (19)
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
					VALUE="0"
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

		TYPEOF RULE (20)
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
					VALUE="5"
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

	TYPEOF TASK (70)
	{
		IS_EXPANDED="1"
		LABEL="PDT post-INT 9"
		TASK_KIND="0"

		TYPEOF TASK (363)
		{
			LABEL="Dot 43"
			TASK_KIND="0"

			TYPEOF TASK (364)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (484)
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
							VALUE="698.0"
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

			TYPEOF TASK (365)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (487)
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
							VALUE="698.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="8.68"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.25"
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

				TYPEOF RULE (485)
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

				TYPEOF RULE (486)
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
									VALUE="698.0"
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

		TYPEOF TASK (366)
		{
			LABEL="Dot 44"
			TASK_KIND="0"

			TYPEOF TASK (367)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (488)
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
							VALUE="712.0"
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

			TYPEOF TASK (368)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (491)
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
							VALUE="712.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="17.09"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.47"
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

				TYPEOF RULE (489)
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

				TYPEOF RULE (490)
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
									VALUE="712.0"
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

		TYPEOF TASK (369)
		{
			LABEL="Dot 45"
			TASK_KIND="0"

			TYPEOF TASK (370)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (492)
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
							VALUE="718.0"
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

			TYPEOF TASK (371)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (495)
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
							VALUE="718.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.55"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.73"
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

				TYPEOF RULE (493)
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

				TYPEOF RULE (494)
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
									VALUE="718.0"
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

		TYPEOF TASK (372)
		{
			LABEL="Dot 46"
			TASK_KIND="0"

			TYPEOF TASK (373)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (496)
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
							VALUE="734.0"
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

			TYPEOF TASK (374)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (499)
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
							VALUE="734.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="22.38"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.59"
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

				TYPEOF RULE (497)
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

				TYPEOF RULE (498)
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
									VALUE="734.0"
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

		TYPEOF TASK (375)
		{
			LABEL="Dot 47"
			TASK_KIND="0"

			TYPEOF TASK (376)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (500)
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
							VALUE="742.0"
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

			TYPEOF TASK (377)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (503)
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
							VALUE="742.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="21.27"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.09"
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

				TYPEOF RULE (501)
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

				TYPEOF RULE (502)
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
									VALUE="742.0"
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

		TYPEOF TASK (378)
		{
			LABEL="Dot 48"
			TASK_KIND="0"

			TYPEOF TASK (379)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (504)
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
							VALUE="750.0"
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

			TYPEOF TASK (380)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (507)
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
							VALUE="750.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="13.44"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.45"
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

				TYPEOF RULE (505)
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

				TYPEOF RULE (506)
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
									VALUE="750.0"
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

		TYPEOF TASK (381)
		{
			LABEL="Dot 49"
			TASK_KIND="0"

			TYPEOF TASK (382)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (508)
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
							VALUE="766.0"
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

			TYPEOF TASK (383)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (511)
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
							VALUE="766.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.55"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="62.15"
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

				TYPEOF RULE (509)
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

				TYPEOF RULE (510)
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
									VALUE="766.0"
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

		TYPEOF TASK (384)
		{
			LABEL="Dot 50"
			TASK_KIND="0"

			TYPEOF TASK (385)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (512)
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
							VALUE="780.0"
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

			TYPEOF TASK (386)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (515)
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
							VALUE="780.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="25.21"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="57.83"
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

				TYPEOF RULE (513)
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

				TYPEOF RULE (514)
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
									VALUE="780.0"
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

		TYPEOF TASK (387)
		{
			LABEL="Dot 51"
			TASK_KIND="0"

			TYPEOF TASK (388)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (516)
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
							VALUE="792.0"
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

			TYPEOF TASK (389)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (519)
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
							VALUE="792.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="21.2"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.46"
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

				TYPEOF RULE (517)
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

				TYPEOF RULE (518)
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
									VALUE="792.0"
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

		TYPEOF TASK (390)
		{
			LABEL="Dot 52"
			TASK_KIND="0"

			TYPEOF TASK (391)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (520)
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
							VALUE="798.0"
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

			TYPEOF TASK (392)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (523)
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
							VALUE="798.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="26.07"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.2"
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

				TYPEOF RULE (521)
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

				TYPEOF RULE (522)
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
									VALUE="798.0"
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

		TYPEOF TASK (393)
		{
			LABEL="Dot 53"
			TASK_KIND="0"

			TYPEOF TASK (394)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (524)
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
							VALUE="806.0"
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

			TYPEOF TASK (395)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (527)
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
							VALUE="806.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="21.61"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.34"
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

				TYPEOF RULE (525)
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

				TYPEOF RULE (526)
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
									VALUE="806.0"
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

		TYPEOF TASK (82)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (219)
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
						VALUE="810.0"
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

	TYPEOF TASK (3)
	{
		LABEL="INT 10"
		TASK_KIND="0"

		TYPEOF RULE (2)
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
					VALUE="0"
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

		TYPEOF RULE (5)
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
					VALUE="5"
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

	TYPEOF TASK (81)
	{
		IS_EXPANDED="1"
		LABEL="PDT post-INT 10"
		TASK_KIND="0"

		TYPEOF TASK (396)
		{
			LABEL="Dot 54"
			TASK_KIND="0"

			TYPEOF TASK (397)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (528)
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
							VALUE="880.0"
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

			TYPEOF TASK (398)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (531)
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
							VALUE="880.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="10.51"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.59"
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

				TYPEOF RULE (529)
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

				TYPEOF RULE (530)
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
									VALUE="880.0"
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

		TYPEOF TASK (399)
		{
			LABEL="Dot 55"
			TASK_KIND="0"

			TYPEOF TASK (400)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (532)
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
							VALUE="888.0"
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

			TYPEOF TASK (401)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (535)
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
							VALUE="888.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="25.56"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="56.43"
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

				TYPEOF RULE (533)
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

				TYPEOF RULE (534)
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
									VALUE="888.0"
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

		TYPEOF TASK (402)
		{
			LABEL="Dot 56"
			TASK_KIND="0"

			TYPEOF TASK (403)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (536)
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
							VALUE="902.0"
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

			TYPEOF TASK (404)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (539)
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
							VALUE="902.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="15.02"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="61.22"
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

				TYPEOF RULE (537)
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

				TYPEOF RULE (538)
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
									VALUE="902.0"
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

		TYPEOF TASK (405)
		{
			LABEL="Dot 57"
			TASK_KIND="0"

			TYPEOF TASK (406)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (540)
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
							VALUE="912.0"
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

			TYPEOF TASK (407)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (543)
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
							VALUE="912.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="26.68"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.85"
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

				TYPEOF RULE (541)
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

				TYPEOF RULE (542)
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
									VALUE="912.0"
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

		TYPEOF TASK (408)
		{
			LABEL="Dot 58"
			TASK_KIND="0"

			TYPEOF TASK (409)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (544)
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
							VALUE="920.0"
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

			TYPEOF TASK (410)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (547)
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
							VALUE="920.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="8.23"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="59.74"
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

				TYPEOF RULE (545)
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

				TYPEOF RULE (546)
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
									VALUE="920.0"
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

		TYPEOF TASK (411)
		{
			LABEL="Dot 59"
			TASK_KIND="0"

			TYPEOF TASK (412)
			{
				IS_EXPANDED="1"
				LABEL="Task: ISI"
				TASK_KIND="0"

				TYPEOF RULE (548)
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
							VALUE="928.0"
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

			TYPEOF TASK (413)
			{
				IS_EXPANDED="1"
				LABEL="Dot display"
				TASK_KIND="0"

				TYPEOF RULE (551)
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
							VALUE="928.0"
							OWNER_FILE=""
						}
					}

					TYPEOF ACTION (SET_IMAGE)
					{
						IS_EXPANDED="1"

						TYPEOF PARAMETER (SCREEN_XPOSITION)
						{
							KIND="USER"
							VALUE="22.32"
							OWNER_FILE=""
						}

						TYPEOF PARAMETER (SCREEN_YPOSITION)
						{
							KIND="USER"
							VALUE="60.53"
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

				TYPEOF RULE (549)
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

				TYPEOF RULE (550)
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
									VALUE="928.0"
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

		TYPEOF TASK (92)
		{
			LABEL="Next Int start time"
			TASK_KIND="0"

			TYPEOF RULE (243)
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
						VALUE="932.0"
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
					VALUE="934.0"
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
					VALUE="VISUAL_TRIPLEHEAD:1.2"
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
					VALUE="940.0"
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
        <position>-1217.25011731616 9881.44882671889 0</position>
        <heading>4.32327222824097</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>16854.9043272707</abscissa>
          <gapInItnSystem>5.39999999486209</gapInItnSystem>
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
        <position>-949.251649051406 7.39814058910448 0</position>
        <heading>0.113086014986038</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>30.3042023259521</abscissa>
          <gapInItnSystem>-1.89999999997278</gapInItnSystem>
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
        <position>2029.17340554442 12140.1476029447 0</position>
        <heading>0.694738388061523</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>21130.4034857314</abscissa>
          <gapInItnSystem>34.7968206074201</gapInItnSystem>
          <relativeHeading>6.28242921829224</relativeHeading>
        </RoadPosition>
      </ObjectPosition>
    </Sink>
    <Source>
      <name>Source 1</name>
      <process>TRAFFIC</process>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-1152.21740276615 10096.8941861984 0</position>
        <heading>4.46664905548096</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>17079.5644865705</abscissa>
          <gapInItnSystem>1.89999999961288</gapInItnSystem>
          <relativeHeading>3.14159297943115</relativeHeading>
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
    <Source>
      <name>Source 2</name>
      <process>TRAFFIC</process>
      <isActivated>1</isActivated>
      <ObjectPosition>
        <position>-969.715578214858 8.58977037208076 0</position>
        <heading>0.113809607923031</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>9.30128982281699</abscissa>
          <gapInItnSystem>-5.39999999993229</gapInItnSystem>
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
        <position>-625.144247104928 6547.25439536011 0.984307839678908</position>
        <heading>5.35804319381714</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>13122.319690356</abscissa>
          <gapInItnSystem>1.89999999895464</gapInItnSystem>
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
        <position>656.061927460462 5812.43305771024 0</position>
        <heading>3.12968397140503</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>11577.4054549441</abscissa>
          <gapInItnSystem>-1.89999999893205</gapInItnSystem>
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
        <position>2519.82366382775 3927.03636652143 0</position>
        <heading>2.68800020217896</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>8508.5798966234</abscissa>
          <gapInItnSystem>-5.39999999997623</gapInItnSystem>
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
        <position>3577.81000043488 1878.20064993414 0</position>
        <heading>2.21080422401428</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>5949.22498731504</abscissa>
          <gapInItnSystem>-1.89999999960901</gapInItnSystem>
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
        <position>3112.44472678835 526.878880498625 0</position>
        <heading>0.168062850832939</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>4215.58458098701</abscissa>
          <gapInItnSystem>-5.3999998816054</gapInItnSystem>
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
        <position>1808.11008929312 91.5503408730058 1.59182988478626</position>
        <heading>0.115978762507439</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>2808.98952649115</abscissa>
          <gapInItnSystem>-5.39999998793178</gapInItnSystem>
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
        <position>153.400789325594 124.819655732771 0.944578036199835</position>
        <heading>0.0907581299543381</heading>
        <RoadPosition>
          <subNetwork>Sub Network</subNetwork>
          <track>Track</track>
          <abscissa>1138.05781606272</abscissa>
          <gapInItnSystem>-5.39999999993755</gapInItnSystem>
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
  </Scenario>

</sce>
