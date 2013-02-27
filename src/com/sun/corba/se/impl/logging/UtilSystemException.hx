package com.sun.corba.se.impl.logging;
//// Log wrapper class for Sun private system exceptions in group UTIL
////
//// Generated by MC.java version 1.0, DO NOT EDIT BY HAND!
//// Generated from input file ../../../../src/share/classes/com/sun/corba/se/spi/logging/data/Util.mc on Thu Feb 21 09:14:12 UTC 2013
extern class UtilSystemException extends com.sun.corba.se.spi.logging.LogWrapperBase
{
	@:overload public function new(logger : java.util.logging.Logger) : Void;
	
	@:overload public static function get(orb : com.sun.corba.se.spi.orb.ORB, logDomain : String) : UtilSystemException;
	
	@:overload public static function get(logDomain : String) : UtilSystemException;
	
	public static var STUB_FACTORY_COULD_NOT_MAKE_STUB(default, null) : Int;
	
	@:overload public function stubFactoryCouldNotMakeStub(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function stubFactoryCouldNotMakeStub(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function stubFactoryCouldNotMakeStub(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function stubFactoryCouldNotMakeStub() : org.omg.CORBA.BAD_OPERATION;
	
	public static var ERROR_IN_MAKE_STUB_FROM_REPOSITORY_ID(default, null) : Int;
	
	@:overload public function errorInMakeStubFromRepositoryId(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function errorInMakeStubFromRepositoryId(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function errorInMakeStubFromRepositoryId(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function errorInMakeStubFromRepositoryId() : org.omg.CORBA.BAD_OPERATION;
	
	public static var CLASS_CAST_EXCEPTION_IN_LOAD_STUB(default, null) : Int;
	
	@:overload public function classCastExceptionInLoadStub(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function classCastExceptionInLoadStub(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function classCastExceptionInLoadStub(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function classCastExceptionInLoadStub() : org.omg.CORBA.BAD_OPERATION;
	
	public static var EXCEPTION_IN_LOAD_STUB(default, null) : Int;
	
	@:overload public function exceptionInLoadStub(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function exceptionInLoadStub(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function exceptionInLoadStub(t : java.lang.Throwable) : org.omg.CORBA.BAD_OPERATION;
	
	@:overload public function exceptionInLoadStub() : org.omg.CORBA.BAD_OPERATION;
	
	public static var NO_POA(default, null) : Int;
	
	@:overload public function noPoa(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function noPoa(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function noPoa(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function noPoa() : org.omg.CORBA.BAD_PARAM;
	
	public static var CONNECT_WRONG_ORB(default, null) : Int;
	
	@:overload public function connectWrongOrb(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectWrongOrb(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectWrongOrb(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectWrongOrb() : org.omg.CORBA.BAD_PARAM;
	
	public static var CONNECT_NO_TIE(default, null) : Int;
	
	@:overload public function connectNoTie(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectNoTie(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectNoTie(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectNoTie() : org.omg.CORBA.BAD_PARAM;
	
	public static var CONNECT_TIE_WRONG_ORB(default, null) : Int;
	
	@:overload public function connectTieWrongOrb(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieWrongOrb(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieWrongOrb(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieWrongOrb() : org.omg.CORBA.BAD_PARAM;
	
	public static var CONNECT_TIE_NO_SERVANT(default, null) : Int;
	
	@:overload public function connectTieNoServant(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieNoServant(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieNoServant(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function connectTieNoServant() : org.omg.CORBA.BAD_PARAM;
	
	public static var LOAD_TIE_FAILED(default, null) : Int;
	
	@:overload public function loadTieFailed(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function loadTieFailed(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function loadTieFailed(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function loadTieFailed(arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	public static var BAD_HEX_DIGIT(default, null) : Int;
	
	@:overload public function badHexDigit(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.DATA_CONVERSION;
	
	@:overload public function badHexDigit(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.DATA_CONVERSION;
	
	@:overload public function badHexDigit(t : java.lang.Throwable) : org.omg.CORBA.DATA_CONVERSION;
	
	@:overload public function badHexDigit() : org.omg.CORBA.DATA_CONVERSION;
	
	public static var UNABLE_LOCATE_VALUE_HELPER(default, null) : Int;
	
	@:overload public function unableLocateValueHelper(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.MARSHAL;
	
	@:overload public function unableLocateValueHelper(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.MARSHAL;
	
	@:overload public function unableLocateValueHelper(t : java.lang.Throwable) : org.omg.CORBA.MARSHAL;
	
	@:overload public function unableLocateValueHelper() : org.omg.CORBA.MARSHAL;
	
	public static var INVALID_INDIRECTION(default, null) : Int;
	
	@:overload public function invalidIndirection(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.MARSHAL;
	
	@:overload public function invalidIndirection(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.MARSHAL;
	
	@:overload public function invalidIndirection(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.MARSHAL;
	
	@:overload public function invalidIndirection(arg0 : Dynamic) : org.omg.CORBA.MARSHAL;
	
	public static var OBJECT_NOT_CONNECTED(default, null) : Int;
	
	@:overload public function objectNotConnected(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotConnected(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotConnected(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotConnected(arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	public static var COULD_NOT_LOAD_STUB(default, null) : Int;
	
	@:overload public function couldNotLoadStub(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function couldNotLoadStub(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function couldNotLoadStub(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function couldNotLoadStub(arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	public static var OBJECT_NOT_EXPORTED(default, null) : Int;
	
	@:overload public function objectNotExported(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotExported(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotExported(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	@:overload public function objectNotExported(arg0 : Dynamic) : org.omg.CORBA.INV_OBJREF;
	
	public static var ERROR_SET_OBJECT_FIELD(default, null) : Int;
	
	@:overload public function errorSetObjectField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetObjectField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetObjectField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetObjectField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_BOOLEAN_FIELD(default, null) : Int;
	
	@:overload public function errorSetBooleanField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetBooleanField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetBooleanField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetBooleanField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_BYTE_FIELD(default, null) : Int;
	
	@:overload public function errorSetByteField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetByteField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetByteField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetByteField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_CHAR_FIELD(default, null) : Int;
	
	@:overload public function errorSetCharField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetCharField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetCharField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetCharField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_SHORT_FIELD(default, null) : Int;
	
	@:overload public function errorSetShortField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetShortField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetShortField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetShortField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_INT_FIELD(default, null) : Int;
	
	@:overload public function errorSetIntField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetIntField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetIntField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetIntField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_LONG_FIELD(default, null) : Int;
	
	@:overload public function errorSetLongField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetLongField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetLongField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetLongField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_FLOAT_FIELD(default, null) : Int;
	
	@:overload public function errorSetFloatField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetFloatField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetFloatField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetFloatField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ERROR_SET_DOUBLE_FIELD(default, null) : Int;
	
	@:overload public function errorSetDoubleField(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetDoubleField(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetDoubleField(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function errorSetDoubleField(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var ILLEGAL_FIELD_ACCESS(default, null) : Int;
	
	@:overload public function illegalFieldAccess(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function illegalFieldAccess(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function illegalFieldAccess(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function illegalFieldAccess(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var BAD_BEGIN_UNMARSHAL_CUSTOM_VALUE(default, null) : Int;
	
	@:overload public function badBeginUnmarshalCustomValue(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badBeginUnmarshalCustomValue(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badBeginUnmarshalCustomValue(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function badBeginUnmarshalCustomValue() : org.omg.CORBA.INTERNAL;
	
	public static var CLASS_NOT_FOUND(default, null) : Int;
	
	@:overload public function classNotFound(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function classNotFound(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function classNotFound(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function classNotFound(arg0 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var UNKNOWN_SYSEX(default, null) : Int;
	
	@:overload public function unknownSysex(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownSysex(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownSysex(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownSysex() : org.omg.CORBA.UNKNOWN;
	
	
}
