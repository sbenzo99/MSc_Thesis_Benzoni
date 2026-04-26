<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" simplifyDrawingTol="1" simplifyLocal="1" maxScale="0" labelsEnabled="0" readOnly="0" version="3.16.15-Hannover" minScale="100000000" simplifyDrawingHints="1" styleCategories="AllStyleCategories" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal startField="" endField="" startExpression="" accumulate="0" durationUnit="min" fixedDuration="0" enabled="0" mode="0" durationField="" endExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" enableorderby="0" forceraster="0" type="RuleRenderer">
    <rules key="{f861987a-680b-4313-b76d-79c4115b7a59}">
      <rule symbol="0" key="{26d288a1-f62d-4e28-a087-f28948da2785}" label="Keine Routeninfo" filter=" &quot;name&quot;  =  'Keine Routeninfo verfügbar' " scalemindenom="55001" scalemaxdenom="5000000"/>
      <rule symbol="1" key="{2221706a-5329-42e1-a2e4-94a45dd68015}" label="Routeninfo" filter="ELSE" scalemindenom="55001" scalemaxdenom="5000000"/>
      <rule symbol="2" key="{2db19d37-a455-456b-bf0d-34e50a6b9a72}" label="Keine Routeninfo" filter=" &quot;name&quot;  =  'Keine Routeninfo verfügbar' " scalemaxdenom="55000"/>
      <rule symbol="3" key="{990b5832-6063-481d-af1a-eb8b1322e8b6}" label="Routeninfo" filter="ELSE" scalemaxdenom="55000"/>
    </rules>
    <symbols>
      <symbol name="0" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="255,255,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.2" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.2" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="255,255,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.6" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.6" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions" value="&quot;t_name&quot;"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory spacingUnitScale="3x:0,0,0,0,0,0" rotationOffset="270" showAxis="1" enabled="0" maxScaleDenominator="1e+08" lineSizeType="MM" sizeType="MM" spacing="5" opacity="1" minScaleDenominator="0" backgroundAlpha="255" penAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" labelPlacementMethod="XHeight" barWidth="5" sizeScale="3x:0,0,0,0,0,0" direction="0" penColor="#000000" scaleDependency="Area" penWidth="0" height="15" backgroundColor="#ffffff" width="15" minimumSize="0" spacingUnit="MM" scaleBasedVisibility="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <axisSymbol>
        <symbol name="" alpha="1" clip_to_extent="1" type="line" force_rhr="0">
          <layer pass="0" class="SimpleLine" enabled="1" locked="0">
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="2" linePlacementFlags="18" obstacle="0" showAll="1" zIndex="0" priority="0" dist="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="fid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sacid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sactid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="discipline" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name_de" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name_fr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name_it" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name_en" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="difficulty_de" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ascent_altitude" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ascent_time_label" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ascent_time" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="descent_altitude" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="url_de" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="url_fr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="url_it" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="url_en" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="difficulty_fr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="difficulty_it" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="difficulty_en" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="difficulty" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="target_name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="target_altitude" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="route_uuid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="route_nr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="url_other" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="fid" name=""/>
    <alias index="1" field="sacid" name=""/>
    <alias index="2" field="sactid" name=""/>
    <alias index="3" field="discipline" name=""/>
    <alias index="4" field="name" name=""/>
    <alias index="5" field="name_de" name=""/>
    <alias index="6" field="name_fr" name=""/>
    <alias index="7" field="name_it" name=""/>
    <alias index="8" field="name_en" name=""/>
    <alias index="9" field="difficulty_de" name=""/>
    <alias index="10" field="ascent_altitude" name=""/>
    <alias index="11" field="ascent_time_label" name=""/>
    <alias index="12" field="ascent_time" name=""/>
    <alias index="13" field="descent_altitude" name=""/>
    <alias index="14" field="url_de" name=""/>
    <alias index="15" field="url_fr" name=""/>
    <alias index="16" field="url_it" name=""/>
    <alias index="17" field="url_en" name=""/>
    <alias index="18" field="difficulty_fr" name=""/>
    <alias index="19" field="difficulty_it" name=""/>
    <alias index="20" field="difficulty_en" name=""/>
    <alias index="21" field="difficulty" name=""/>
    <alias index="22" field="target_name" name=""/>
    <alias index="23" field="target_altitude" name=""/>
    <alias index="24" field="route_uuid" name=""/>
    <alias index="25" field="route_nr" name=""/>
    <alias index="26" field="url_other" name=""/>
  </aliases>
  <defaults>
    <default field="fid" expression="" applyOnUpdate="0"/>
    <default field="sacid" expression="" applyOnUpdate="0"/>
    <default field="sactid" expression="" applyOnUpdate="0"/>
    <default field="discipline" expression="" applyOnUpdate="0"/>
    <default field="name" expression="" applyOnUpdate="0"/>
    <default field="name_de" expression="" applyOnUpdate="0"/>
    <default field="name_fr" expression="" applyOnUpdate="0"/>
    <default field="name_it" expression="" applyOnUpdate="0"/>
    <default field="name_en" expression="" applyOnUpdate="0"/>
    <default field="difficulty_de" expression="" applyOnUpdate="0"/>
    <default field="ascent_altitude" expression="" applyOnUpdate="0"/>
    <default field="ascent_time_label" expression="" applyOnUpdate="0"/>
    <default field="ascent_time" expression="" applyOnUpdate="0"/>
    <default field="descent_altitude" expression="" applyOnUpdate="0"/>
    <default field="url_de" expression="" applyOnUpdate="0"/>
    <default field="url_fr" expression="" applyOnUpdate="0"/>
    <default field="url_it" expression="" applyOnUpdate="0"/>
    <default field="url_en" expression="" applyOnUpdate="0"/>
    <default field="difficulty_fr" expression="" applyOnUpdate="0"/>
    <default field="difficulty_it" expression="" applyOnUpdate="0"/>
    <default field="difficulty_en" expression="" applyOnUpdate="0"/>
    <default field="difficulty" expression="" applyOnUpdate="0"/>
    <default field="target_name" expression="" applyOnUpdate="0"/>
    <default field="target_altitude" expression="" applyOnUpdate="0"/>
    <default field="route_uuid" expression="" applyOnUpdate="0"/>
    <default field="route_nr" expression="" applyOnUpdate="0"/>
    <default field="url_other" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" field="fid" exp_strength="0" constraints="3" unique_strength="1"/>
    <constraint notnull_strength="0" field="sacid" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="sactid" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="discipline" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="name" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="name_de" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="name_fr" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="name_it" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="name_en" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="difficulty_de" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="ascent_altitude" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="ascent_time_label" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="ascent_time" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="descent_altitude" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="url_de" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="url_fr" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="url_it" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="url_en" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="difficulty_fr" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="difficulty_it" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="difficulty_en" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="difficulty" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="target_name" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="target_altitude" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="route_uuid" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="route_nr" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="url_other" exp_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="fid" exp=""/>
    <constraint desc="" field="sacid" exp=""/>
    <constraint desc="" field="sactid" exp=""/>
    <constraint desc="" field="discipline" exp=""/>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="name_de" exp=""/>
    <constraint desc="" field="name_fr" exp=""/>
    <constraint desc="" field="name_it" exp=""/>
    <constraint desc="" field="name_en" exp=""/>
    <constraint desc="" field="difficulty_de" exp=""/>
    <constraint desc="" field="ascent_altitude" exp=""/>
    <constraint desc="" field="ascent_time_label" exp=""/>
    <constraint desc="" field="ascent_time" exp=""/>
    <constraint desc="" field="descent_altitude" exp=""/>
    <constraint desc="" field="url_de" exp=""/>
    <constraint desc="" field="url_fr" exp=""/>
    <constraint desc="" field="url_it" exp=""/>
    <constraint desc="" field="url_en" exp=""/>
    <constraint desc="" field="difficulty_fr" exp=""/>
    <constraint desc="" field="difficulty_it" exp=""/>
    <constraint desc="" field="difficulty_en" exp=""/>
    <constraint desc="" field="difficulty" exp=""/>
    <constraint desc="" field="target_name" exp=""/>
    <constraint desc="" field="target_altitude" exp=""/>
    <constraint desc="" field="route_uuid" exp=""/>
    <constraint desc="" field="route_nr" exp=""/>
    <constraint desc="" field="url_other" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="1" sortExpression="&quot;name_de&quot;">
    <columns>
      <column hidden="0" name="fid" width="-1" type="field"/>
      <column hidden="0" name="sacid" width="-1" type="field"/>
      <column hidden="0" name="sactid" width="-1" type="field"/>
      <column hidden="0" name="discipline" width="-1" type="field"/>
      <column hidden="0" name="name" width="-1" type="field"/>
      <column hidden="0" name="name_de" width="168" type="field"/>
      <column hidden="0" name="name_fr" width="-1" type="field"/>
      <column hidden="0" name="name_it" width="-1" type="field"/>
      <column hidden="0" name="name_en" width="-1" type="field"/>
      <column hidden="0" name="difficulty" width="-1" type="field"/>
      <column hidden="0" name="ascent_altitude" width="-1" type="field"/>
      <column hidden="0" name="ascent_time_label" width="-1" type="field"/>
      <column hidden="0" name="ascent_time" width="-1" type="field"/>
      <column hidden="0" name="descent_altitude" width="-1" type="field"/>
      <column hidden="0" name="url_de" width="153" type="field"/>
      <column hidden="0" name="url_fr" width="-1" type="field"/>
      <column hidden="0" name="url_it" width="143" type="field"/>
      <column hidden="0" name="url_en" width="91" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" name="difficulty_de" width="-1" type="field"/>
      <column hidden="0" name="difficulty_fr" width="-1" type="field"/>
      <column hidden="0" name="difficulty_it" width="-1" type="field"/>
      <column hidden="0" name="difficulty_en" width="-1" type="field"/>
      <column hidden="0" name="target_name" width="-1" type="field"/>
      <column hidden="0" name="target_altitude" width="-1" type="field"/>
      <column hidden="0" name="route_uuid" width="-1" type="field"/>
      <column hidden="0" name="route_nr" width="-1" type="field"/>
      <column hidden="0" name="url_other" width="-1" type="field"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="ascent_altitude"/>
    <field editable="1" name="ascent_time"/>
    <field editable="1" name="ascent_time_label"/>
    <field editable="1" name="descent_altitude"/>
    <field editable="1" name="difficulty"/>
    <field editable="1" name="difficulty_de"/>
    <field editable="1" name="difficulty_en"/>
    <field editable="1" name="difficulty_fr"/>
    <field editable="1" name="difficulty_it"/>
    <field editable="1" name="discipline"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="name"/>
    <field editable="1" name="name_de"/>
    <field editable="1" name="name_en"/>
    <field editable="1" name="name_fr"/>
    <field editable="1" name="name_it"/>
    <field editable="1" name="route_nr"/>
    <field editable="1" name="route_uuid"/>
    <field editable="1" name="sacid"/>
    <field editable="1" name="sactid"/>
    <field editable="1" name="target_altitude"/>
    <field editable="1" name="target_name"/>
    <field editable="1" name="url_de"/>
    <field editable="1" name="url_en"/>
    <field editable="1" name="url_fr"/>
    <field editable="1" name="url_it"/>
    <field editable="1" name="url_other"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="ascent_altitude"/>
    <field labelOnTop="0" name="ascent_time"/>
    <field labelOnTop="0" name="ascent_time_label"/>
    <field labelOnTop="0" name="descent_altitude"/>
    <field labelOnTop="0" name="difficulty"/>
    <field labelOnTop="0" name="difficulty_de"/>
    <field labelOnTop="0" name="difficulty_en"/>
    <field labelOnTop="0" name="difficulty_fr"/>
    <field labelOnTop="0" name="difficulty_it"/>
    <field labelOnTop="0" name="discipline"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="name_de"/>
    <field labelOnTop="0" name="name_en"/>
    <field labelOnTop="0" name="name_fr"/>
    <field labelOnTop="0" name="name_it"/>
    <field labelOnTop="0" name="route_nr"/>
    <field labelOnTop="0" name="route_uuid"/>
    <field labelOnTop="0" name="sacid"/>
    <field labelOnTop="0" name="sactid"/>
    <field labelOnTop="0" name="target_altitude"/>
    <field labelOnTop="0" name="target_name"/>
    <field labelOnTop="0" name="url_de"/>
    <field labelOnTop="0" name="url_en"/>
    <field labelOnTop="0" name="url_fr"/>
    <field labelOnTop="0" name="url_it"/>
    <field labelOnTop="0" name="url_other"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"t_name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
