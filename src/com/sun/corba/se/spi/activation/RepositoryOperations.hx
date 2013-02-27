package com.sun.corba.se.spi.activation;
/**
* com/sun/corba/se/spi/activation/RepositoryOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern interface RepositoryOperations
{
	@:overload public function registerServer(serverDef : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef) : Int;
	
	@:overload public function unregisterServer(serverId : Int) : Void;
	
	@:overload public function getServer(serverId : Int) : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef;
	
	@:overload public function isInstalled(serverId : Int) : Bool;
	
	@:overload public function install(serverId : Int) : Void;
	
	@:overload public function uninstall(serverId : Int) : Void;
	
	@:overload public function listRegisteredServers() : java.NativeArray<Int>;
	
	@:overload public function getApplicationNames() : java.NativeArray<String>;
	
	@:overload public function getServerID(applicationName : String) : Int;
	
	
}
