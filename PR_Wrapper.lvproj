<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="PowerRiderDLL_demo.vi" Type="VI" URL="../PowerRiderDLL_demo.vi"/>
		<Item Name="PR_CAN_Labview_Demo.vi" Type="VI" URL="../PR_CAN_Labview_Demo.vi"/>
		<Item Name="PR_COM_Labview_Demo.vi" Type="VI" URL="../PR_COM_Labview_Demo.vi"/>
		<Item Name="PR_UDP_Labview_Demo.vi" Type="VI" URL="../PR_UDP_Labview_Demo.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="ControlCAN.lvlib" Type="Library" URL="../../Fuse25A_Labview/Power-Rider-GUI/CANalystII/PCAN_Driver/ControlCAN.lvlib"/>
			<Item Name="dataDisplay.vi" Type="VI" URL="../dataDisplay.vi"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PowerRiderDLLWrapper.dll" Type="Document" URL="../PowerRiderDLLWrapper.dll"/>
			<Item Name="StrDisplay.vi" Type="VI" URL="../StrDisplay.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="PR_Wrapper" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{EBA12ED2-D899-42B5-B6E0-2E4BD7F1F706}</Property>
				<Property Name="App_INI_GUID" Type="Str">{48173FD9-797C-4883-9588-E8F95D479996}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.redler.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AC43D133-D959-49BF-B1BD-F63F03A33F6C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">PR_Wrapper</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/PR_Wrapper</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{96C2DB9F-F3AB-452D-8CFB-E0CC6364F718}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Application.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/PR_Wrapper/Application.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/PR_Wrapper/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{29D04A7B-E12A-4A14-8BA9-76111B1312E9}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/PowerRiderDLL_demo.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">redler</Property>
				<Property Name="TgtF_fileDescription" Type="Str">PR_Wrapper</Property>
				<Property Name="TgtF_internalName" Type="Str">PR_Wrapper</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2023 redler</Property>
				<Property Name="TgtF_productName" Type="Str">PR_Wrapper</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7D7E3F5A-9D97-4008-88DD-D802E9E71FDA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Application.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
