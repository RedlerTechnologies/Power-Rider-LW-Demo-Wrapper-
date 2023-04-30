<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="CTLs" Type="Folder">
			<Item Name="HITRAN-Line-Cluster.ctl" Type="VI" URL="../Examples/HITRAN-Line-Cluster.ctl"/>
		</Item>
		<Item Name="Examples" Type="Folder">
			<Item Name="Direct dotNET" Type="Folder">
				<Item Name="Find-NoClasses.vi" Type="VI" URL="../Examples/Find-NoClasses.vi"/>
			</Item>
			<Item Name="Insert-Classes.vi" Type="VI" URL="../Examples/Insert-Classes.vi"/>
			<Item Name="Find-Classes.vi" Type="VI" URL="../Examples/Find-Classes.vi"/>
			<Item Name="Update-Classes.vi" Type="VI" URL="../Examples/Update-Classes.vi"/>
			<Item Name="Delete-Classes.vi" Type="VI" URL="../Examples/Delete-Classes.vi"/>
			<Item Name="Find-Classes-Compact.vi" Type="VI" URL="../Examples/Find-Classes-Compact.vi"/>
		</Item>
		<Item Name="MongoDB-Driver" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Helper-VIs" Type="Folder"/>
			<Item Name="CSharp-DLLs" Type="Folder">
				<Item Name="MongoLabVIEW.dll" Type="Document" URL="../MongoDB-Driver/MLV DLLs/MongoLabVIEW.dll"/>
				<Item Name="MongoDB.Driver.dll" Type="Document" URL="../MongoDB-Driver/MLV DLLs/MongoDB.Driver.dll"/>
				<Item Name="MongoDB.Bson.dll" Type="Document" URL="../MongoDB-Driver/MLV DLLs/MongoDB.Bson.dll"/>
				<Item Name="MongoDB.Driver.Core.dll" Type="Document" URL="../MongoDB-Driver/MLV DLLs/MongoDB.Driver.Core.dll"/>
				<Item Name="System.Runtime.InteropServices.RuntimeInformation.dll" Type="Document" URL="../MongoDB-Driver/MLV DLLs/System.Runtime.InteropServices.RuntimeInformation.dll"/>
			</Item>
			<Item Name="MongoDB-Client.lvlib" Type="Library" URL="../MongoDB-Driver/MongoDB-Client/MongoDB-Client.lvlib"/>
			<Item Name="MongoDB-Database.lvlib" Type="Library" URL="../MongoDB-Driver/MongoDB-Database/MongoDB-Database.lvlib"/>
			<Item Name="MongoDB-Collection.lvlib" Type="Library" URL="../MongoDB-Driver/MongoDB-Collection/MongoDB-Collection.lvlib"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
