package com.sun.corba.se.impl.logging;
//// Log wrapper class for Sun private system exceptions in group IOR
////
//// Generated by MC.java version 1.0, DO NOT EDIT BY HAND!
//// Generated from input file ../../../../src/share/classes/com/sun/corba/se/spi/logging/data/IOR.mc on Thu Feb 21 09:14:11 UTC 2013
extern class IORSystemException extends com.sun.corba.se.spi.logging.LogWrapperBase
{
	@:overload public function new(logger : java.util.logging.Logger) : Void;
	
	@:overload public static function get(orb : com.sun.corba.se.spi.orb.ORB, logDomain : String) : IORSystemException;
	
	@:overload public static function get(logDomain : String) : IORSystemException;
	
	public static var ORT_NOT_INITIALIZED(default, null) : Int;
	
	@:overload public function ortNotInitialized(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function ortNotInitialized(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function ortNotInitialized(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function ortNotInitialized() : org.omg.CORBA.INTERNAL;
	
	public static var NULL_POA(default, null) : Int;
	
	@:overload public function nullPoa(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function nullPoa(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function nullPoa(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function nullPoa() : org.omg.CORBA.INTERNAL;
	
	public static var BAD_MAGIC(default, null) : Int;
	
	@:overload public function badMagic(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badMagic(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badMagic(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badMagic(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var STRINGIFY_WRITE_ERROR(default, null) : Int;
	
	@:overload public function stringifyWriteError(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function stringifyWriteError(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function stringifyWriteError(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function stringifyWriteError() : org.omg.CORBA.INTERNAL;
	
	public static var TAGGED_PROFILE_TEMPLATE_FACTORY_NOT_FOUND(default, null) : Int;
	
	@:overload public function taggedProfileTemplateFactoryNotFound(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function taggedProfileTemplateFactoryNotFound(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function taggedProfileTemplateFactoryNotFound(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function taggedProfileTemplateFactoryNotFound(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var INVALID_JDK1_3_1_PATCH_LEVEL(default, null) : Int;
	
	@:overload public function invalidJdk131PatchLevel(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function invalidJdk131PatchLevel(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function invalidJdk131PatchLevel(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function invalidJdk131PatchLevel(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var GET_LOCAL_SERVANT_FAILURE(default, null) : Int;
	
	@:overload public function getLocalServantFailure(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function getLocalServantFailure(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function getLocalServantFailure(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function getLocalServantFailure(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ADAPTER_ID_NOT_AVAILABLE(default, null) : Int;
	
	@:overload public function adapterIdNotAvailable(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function adapterIdNotAvailable(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function adapterIdNotAvailable(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function adapterIdNotAvailable() : org.omg.CORBA.BAD_OPERATION;
	
	public static var SERVER_ID_NOT_AVAILABLE(default, null) : Int;
	
	@:overload public function serverIdNotAvailable(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function serverIdNotAvailable(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function serverIdNotAvailable(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function serverIdNotAvailable() : org.omg.CORBA.BAD_OPERATION;
	
	public static var ORB_ID_NOT_AVAILABLE(default, null) : Int;
	
	@:overload public function orbIdNotAvailable(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function orbIdNotAvailable(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function orbIdNotAvailable(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function orbIdNotAvailable() : org.omg.CORBA.BAD_OPERATION;
	
	public static var OBJECT_ADAPTER_ID_NOT_AVAILABLE(default, null) : Int;
	
	@:overload public function objectAdapterIdNotAvailable(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function objectAdapterIdNotAvailable(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function objectAdapterIdNotAvailable(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function objectAdapterIdNotAvailable() : org.omg.CORBA.BAD_OPERATION;
	
	public static var BAD_OID_IN_IOR_TEMPLATE_LIST(default, null) : Int;
	
	@:overload public function badOidInIorTemplateList(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badOidInIorTemplateList(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badOidInIorTemplateList(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badOidInIorTemplateList() : org.omg.CORBA.BAD_PARAM;
	
	public static var INVALID_TAGGED_PROFILE(default, null) : Int;
	
	@:overload public function invalidTaggedProfile(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function invalidTaggedProfile(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function invalidTaggedProfile(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function invalidTaggedProfile() : org.omg.CORBA.BAD_PARAM;
	
	public static var BAD_IIOP_ADDRESS_PORT(default, null) : Int;
	
	@:overload public function badIiopAddressPort(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badIiopAddressPort(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badIiopAddressPort(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function badIiopAddressPort(arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	public static var IOR_MUST_HAVE_IIOP_PROFILE(default, null) : Int;
	
	@:overload public function iorMustHaveIiopProfile(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function iorMustHaveIiopProfile(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function iorMustHaveIiopProfile(t : java.lang.Throwable) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function iorMustHaveIiopProfile() : org.omg.CORBA.INV_OBJREF;
	
	
}
