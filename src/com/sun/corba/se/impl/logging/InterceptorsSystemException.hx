package com.sun.corba.se.impl.logging;
//// Log wrapper class for Sun private system exceptions in group INTERCEPTORS
////
//// Generated by MC.java version 1.0, DO NOT EDIT BY HAND!
//// Generated from input file ../../../../src/share/classes/com/sun/corba/se/spi/logging/data/Interceptors.mc on Thu Feb 21 09:14:11 UTC 2013
extern class InterceptorsSystemException extends com.sun.corba.se.spi.logging.LogWrapperBase
{
	@:overload public function new(logger : java.util.logging.Logger) : Void;
	
	@:overload public static function get(orb : com.sun.corba.se.spi.orb.ORB, logDomain : String) : InterceptorsSystemException;
	
	@:overload public static function get(logDomain : String) : InterceptorsSystemException;
	
	public static var TYPE_OUT_OF_RANGE(default, null) : Int;
	
	@:overload public function typeOutOfRange(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function typeOutOfRange(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function typeOutOfRange(t : java.lang.Throwable, arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function typeOutOfRange(arg0 : Dynamic) : org.omg.CORBA.BAD_PARAM;
	
	public static var NAME_NULL(default, null) : Int;
	
	@:overload public function nameNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function nameNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function nameNull(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload public function nameNull() : org.omg.CORBA.BAD_PARAM;
	
	public static var RIR_INVALID_PRE_INIT(default, null) : Int;
	
	@:overload public function rirInvalidPreInit(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function rirInvalidPreInit(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function rirInvalidPreInit(t : java.lang.Throwable) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function rirInvalidPreInit() : org.omg.CORBA.BAD_INV_ORDER;
	
	public static var BAD_STATE1(default, null) : Int;
	
	@:overload public function badState1(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState1(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState1(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState1(arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	public static var BAD_STATE2(default, null) : Int;
	
	@:overload public function badState2(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState2(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState2(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	@:overload public function badState2(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : org.omg.CORBA.BAD_INV_ORDER;
	
	public static var IOEXCEPTION_DURING_CANCEL_REQUEST(default, null) : Int;
	
	@:overload public function ioexceptionDuringCancelRequest(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.COMM_FAILURE;
	
	@:overload public function ioexceptionDuringCancelRequest(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.COMM_FAILURE;
	
	@:overload public function ioexceptionDuringCancelRequest(t : java.lang.Throwable) : org.omg.CORBA.COMM_FAILURE;
	
	@:overload public function ioexceptionDuringCancelRequest() : org.omg.CORBA.COMM_FAILURE;
	
	public static var EXCEPTION_WAS_NULL(default, null) : Int;
	
	@:overload public function exceptionWasNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull() : org.omg.CORBA.INTERNAL;
	
	public static var OBJECT_HAS_NO_DELEGATE(default, null) : Int;
	
	@:overload public function objectHasNoDelegate(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectHasNoDelegate(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectHasNoDelegate(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectHasNoDelegate() : org.omg.CORBA.INTERNAL;
	
	public static var DELEGATE_NOT_CLIENTSUB(default, null) : Int;
	
	@:overload public function delegateNotClientsub(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function delegateNotClientsub(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function delegateNotClientsub(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function delegateNotClientsub() : org.omg.CORBA.INTERNAL;
	
	public static var OBJECT_NOT_OBJECTIMPL(default, null) : Int;
	
	@:overload public function objectNotObjectimpl(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectNotObjectimpl(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectNotObjectimpl(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function objectNotObjectimpl() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_INVALID(default, null) : Int;
	
	@:overload public function exceptionInvalid(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInvalid(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInvalid(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInvalid() : org.omg.CORBA.INTERNAL;
	
	public static var REPLY_STATUS_NOT_INIT(default, null) : Int;
	
	@:overload public function replyStatusNotInit(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function replyStatusNotInit(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function replyStatusNotInit(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function replyStatusNotInit() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_IN_ARGUMENTS(default, null) : Int;
	
	@:overload public function exceptionInArguments(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInArguments(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInArguments(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInArguments() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_IN_EXCEPTIONS(default, null) : Int;
	
	@:overload public function exceptionInExceptions(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInExceptions(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInExceptions(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInExceptions() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_IN_CONTEXTS(default, null) : Int;
	
	@:overload public function exceptionInContexts(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInContexts(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInContexts(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionInContexts() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_WAS_NULL_2(default, null) : Int;
	
	@:overload public function exceptionWasNull2(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull2(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull2(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionWasNull2() : org.omg.CORBA.INTERNAL;
	
	public static var SERVANT_INVALID(default, null) : Int;
	
	@:overload public function servantInvalid(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function servantInvalid(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function servantInvalid(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function servantInvalid() : org.omg.CORBA.INTERNAL;
	
	public static var CANT_POP_ONLY_PICURRENT(default, null) : Int;
	
	@:overload public function cantPopOnlyPicurrent(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyPicurrent(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyPicurrent(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyPicurrent() : org.omg.CORBA.INTERNAL;
	
	public static var CANT_POP_ONLY_CURRENT_2(default, null) : Int;
	
	@:overload public function cantPopOnlyCurrent2(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyCurrent2(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyCurrent2(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function cantPopOnlyCurrent2() : org.omg.CORBA.INTERNAL;
	
	public static var PI_DSI_RESULT_IS_NULL(default, null) : Int;
	
	@:overload public function piDsiResultIsNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDsiResultIsNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDsiResultIsNull(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDsiResultIsNull() : org.omg.CORBA.INTERNAL;
	
	public static var PI_DII_RESULT_IS_NULL(default, null) : Int;
	
	@:overload public function piDiiResultIsNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDiiResultIsNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDiiResultIsNull(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function piDiiResultIsNull() : org.omg.CORBA.INTERNAL;
	
	public static var EXCEPTION_UNAVAILABLE(default, null) : Int;
	
	@:overload public function exceptionUnavailable(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionUnavailable(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionUnavailable(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function exceptionUnavailable() : org.omg.CORBA.INTERNAL;
	
	public static var CLIENT_INFO_STACK_NULL(default, null) : Int;
	
	@:overload public function clientInfoStackNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function clientInfoStackNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function clientInfoStackNull(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function clientInfoStackNull() : org.omg.CORBA.INTERNAL;
	
	public static var SERVER_INFO_STACK_NULL(default, null) : Int;
	
	@:overload public function serverInfoStackNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverInfoStackNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverInfoStackNull(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function serverInfoStackNull() : org.omg.CORBA.INTERNAL;
	
	public static var MARK_AND_RESET_FAILED(default, null) : Int;
	
	@:overload public function markAndResetFailed(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function markAndResetFailed(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function markAndResetFailed(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function markAndResetFailed() : org.omg.CORBA.INTERNAL;
	
	public static var SLOT_TABLE_INVARIANT(default, null) : Int;
	
	@:overload public function slotTableInvariant(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function slotTableInvariant(cs : org.omg.CORBA.CompletionStatus, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function slotTableInvariant(t : java.lang.Throwable, arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	@:overload public function slotTableInvariant(arg0 : Dynamic, arg1 : Dynamic) : org.omg.CORBA.INTERNAL;
	
	public static var INTERCEPTOR_LIST_LOCKED(default, null) : Int;
	
	@:overload public function interceptorListLocked(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function interceptorListLocked(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function interceptorListLocked(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function interceptorListLocked() : org.omg.CORBA.INTERNAL;
	
	public static var SORT_SIZE_MISMATCH(default, null) : Int;
	
	@:overload public function sortSizeMismatch(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function sortSizeMismatch(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload public function sortSizeMismatch(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload public function sortSizeMismatch() : org.omg.CORBA.INTERNAL;
	
	public static var PI_ORB_NOT_POLICY_BASED(default, null) : Int;
	
	@:overload public function piOrbNotPolicyBased(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.NO_IMPLEMENT;
	
	@:overload public function piOrbNotPolicyBased(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.NO_IMPLEMENT;
	
	@:overload public function piOrbNotPolicyBased(t : java.lang.Throwable) : org.omg.CORBA.NO_IMPLEMENT;
	
	@:overload public function piOrbNotPolicyBased() : org.omg.CORBA.NO_IMPLEMENT;
	
	public static var ORBINITINFO_INVALID(default, null) : Int;
	
	@:overload public function orbinitinfoInvalid(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function orbinitinfoInvalid(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function orbinitinfoInvalid(t : java.lang.Throwable) : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	@:overload public function orbinitinfoInvalid() : org.omg.CORBA.OBJECT_NOT_EXIST;
	
	public static var UNKNOWN_REQUEST_INVOKE(default, null) : Int;
	
	@:overload public function unknownRequestInvoke(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownRequestInvoke(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownRequestInvoke(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload public function unknownRequestInvoke() : org.omg.CORBA.UNKNOWN;
	
	
}
