package com.sun.corba.se.impl.logging;
//// Log wrapper class for Sun private system exceptions in group ACTIVATION
////
//// Generated by MC.java version 1.0, DO NOT EDIT BY HAND!
//// Generated from input file ../../../../src/share/classes/com/sun/corba/se/spi/logging/data/Activation.mc on Thu Feb 21 09:14:10 UTC 2013
extern class ActivationSystemException extends com.sun.corba.se.spi.logging.LogWrapperBase
{
	@:overload public function new(logger : java.util.logging.Logger) : Void;
	
	@:overload public static function get(orb : com.sun.corba.se.spi.orb.ORB, logDomain : String) : ActivationSystemException;
	
	@:overload public static function get(logDomain : String) : ActivationSystemException;
	
	public static var CANNOT_READ_REPOSITORY_DB(default, null) : Int;
	
	@:overload public function cannotReadRepositoryDb(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotReadRepositoryDb(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotReadRepositoryDb(t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotReadRepositoryDb() : org.omg.CORBA.INITIALIZE;
	
	public static var CANNOT_ADD_INITIAL_NAMING(default, null) : Int;
	
	@:overload public function cannotAddInitialNaming(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotAddInitialNaming(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotAddInitialNaming(t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload public function cannotAddInitialNaming() : org.omg.CORBA.INITIALIZE;
	
	public static var CANNOT_WRITE_REPOSITORY_DB(default, null) : Int;
	
	@:overload public function cannotWriteRepositoryDb(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cannotWriteRepositoryDb(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cannotWriteRepositoryDb(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cannotWriteRepositoryDb() : org.omg.CORBA.INTERNAL;
	
	public static var SERVER_NOT_EXPECTED_TO_REGISTER(default, null) : Int;
	
	@:overload public function serverNotExpectedToRegister(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotExpectedToRegister(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotExpectedToRegister(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotExpectedToRegister() : org.omg.CORBA.INTERNAL;
	
	public static var UNABLE_TO_START_PROCESS(default, null) : Int;
	
	@:overload public function unableToStartProcess(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function unableToStartProcess(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function unableToStartProcess(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function unableToStartProcess() : org.omg.CORBA.INTERNAL;
	
	public static var SERVER_NOT_RUNNING(default, null) : Int;
	
	@:overload public function serverNotRunning(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotRunning(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotRunning(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverNotRunning() : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_IN_BAD_SERVER_ID_HANDLER(default, null) : Int;
	
	@:overload public function errorInBadServerIdHandler(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function errorInBadServerIdHandler(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function errorInBadServerIdHandler(t : java.lang.Throwable) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function errorInBadServerIdHandler() : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	
}
