package com.sun.corba.se.impl.logging;
//// Log wrapper class for Sun private system exceptions in group NAMING
////
//// Generated by MC.java version 1.0, DO NOT EDIT BY HAND!
//// Generated from input file ../../../../src/share/classes/com/sun/corba/se/spi/logging/data/Naming.mc on Thu Feb 21 09:14:11 UTC 2013
extern class NamingSystemException extends com.sun.corba.se.spi.logging.LogWrapperBase
{
	@:overload @:public public function new(logger : java.util.logging.Logger) : Void;
	
	@:overload @:public @:static public static function get(orb : com.sun.corba.se.spi.orb.ORB, logDomain : String) : com.sun.corba.se.impl.logging.NamingSystemException;
	
	@:overload @:public @:static public static function get(logDomain : String) : com.sun.corba.se.impl.logging.NamingSystemException;
	
	@:public @:static @:final public static var TRANSIENT_NAME_SERVER_BAD_PORT(default, null) : Int;
	
	@:overload @:public public function transientNameServerBadPort(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadPort(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadPort(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadPort() : org.omg.CORBA.BAD_PARAM;
	
	@:public @:static @:final public static var TRANSIENT_NAME_SERVER_BAD_HOST(default, null) : Int;
	
	@:overload @:public public function transientNameServerBadHost(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadHost(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadHost(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function transientNameServerBadHost() : org.omg.CORBA.BAD_PARAM;
	
	@:public @:static @:final public static var OBJECT_IS_NULL(default, null) : Int;
	
	@:overload @:public public function objectIsNull(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function objectIsNull(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function objectIsNull(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function objectIsNull() : org.omg.CORBA.BAD_PARAM;
	
	@:public @:static @:final public static var INS_BAD_ADDRESS(default, null) : Int;
	
	@:overload @:public public function insBadAddress(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function insBadAddress(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function insBadAddress(t : java.lang.Throwable) : org.omg.CORBA.BAD_PARAM;
	
	@:overload @:public public function insBadAddress() : org.omg.CORBA.BAD_PARAM;
	
	@:public @:static @:final public static var BIND_UPDATE_CONTEXT_FAILED(default, null) : Int;
	
	@:overload @:public public function bindUpdateContextFailed(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindUpdateContextFailed(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindUpdateContextFailed(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindUpdateContextFailed() : org.omg.CORBA.UNKNOWN;
	
	@:public @:static @:final public static var BIND_FAILURE(default, null) : Int;
	
	@:overload @:public public function bindFailure(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindFailure(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindFailure(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function bindFailure() : org.omg.CORBA.UNKNOWN;
	
	@:public @:static @:final public static var RESOLVE_CONVERSION_FAILURE(default, null) : Int;
	
	@:overload @:public public function resolveConversionFailure(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveConversionFailure(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveConversionFailure(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveConversionFailure() : org.omg.CORBA.UNKNOWN;
	
	@:public @:static @:final public static var RESOLVE_FAILURE(default, null) : Int;
	
	@:overload @:public public function resolveFailure(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveFailure(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveFailure(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function resolveFailure() : org.omg.CORBA.UNKNOWN;
	
	@:public @:static @:final public static var UNBIND_FAILURE(default, null) : Int;
	
	@:overload @:public public function unbindFailure(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function unbindFailure(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function unbindFailure(t : java.lang.Throwable) : org.omg.CORBA.UNKNOWN;
	
	@:overload @:public public function unbindFailure() : org.omg.CORBA.UNKNOWN;
	
	@:public @:static @:final public static var TRANS_NS_CANNOT_CREATE_INITIAL_NC_SYS(default, null) : Int;
	
	@:overload @:public public function transNsCannotCreateInitialNcSys(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNcSys(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNcSys(t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNcSys() : org.omg.CORBA.INITIALIZE;
	
	@:public @:static @:final public static var TRANS_NS_CANNOT_CREATE_INITIAL_NC(default, null) : Int;
	
	@:overload @:public public function transNsCannotCreateInitialNc(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNc(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNc(t : java.lang.Throwable) : org.omg.CORBA.INITIALIZE;
	
	@:overload @:public public function transNsCannotCreateInitialNc() : org.omg.CORBA.INITIALIZE;
	
	@:public @:static @:final public static var NAMING_CTX_REBIND_ALREADY_BOUND(default, null) : Int;
	
	@:overload @:public public function namingCtxRebindAlreadyBound(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindAlreadyBound(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindAlreadyBound(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindAlreadyBound() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var NAMING_CTX_REBINDCTX_ALREADY_BOUND(default, null) : Int;
	
	@:overload @:public public function namingCtxRebindctxAlreadyBound(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindctxAlreadyBound(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindctxAlreadyBound(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxRebindctxAlreadyBound() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var NAMING_CTX_BAD_BINDINGTYPE(default, null) : Int;
	
	@:overload @:public public function namingCtxBadBindingtype(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBadBindingtype(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBadBindingtype(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBadBindingtype() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var NAMING_CTX_RESOLVE_CANNOT_NARROW_TO_CTX(default, null) : Int;
	
	@:overload @:public public function namingCtxResolveCannotNarrowToCtx(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxResolveCannotNarrowToCtx(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxResolveCannotNarrowToCtx(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxResolveCannotNarrowToCtx() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var NAMING_CTX_BINDING_ITERATOR_CREATE(default, null) : Int;
	
	@:overload @:public public function namingCtxBindingIteratorCreate(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBindingIteratorCreate(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBindingIteratorCreate(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function namingCtxBindingIteratorCreate() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var TRANS_NC_BIND_ALREADY_BOUND(default, null) : Int;
	
	@:overload @:public public function transNcBindAlreadyBound(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcBindAlreadyBound(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcBindAlreadyBound(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcBindAlreadyBound() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var TRANS_NC_LIST_GOT_EXC(default, null) : Int;
	
	@:overload @:public public function transNcListGotExc(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcListGotExc(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcListGotExc(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcListGotExc() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var TRANS_NC_NEWCTX_GOT_EXC(default, null) : Int;
	
	@:overload @:public public function transNcNewctxGotExc(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcNewctxGotExc(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcNewctxGotExc(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcNewctxGotExc() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var TRANS_NC_DESTROY_GOT_EXC(default, null) : Int;
	
	@:overload @:public public function transNcDestroyGotExc(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcDestroyGotExc(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcDestroyGotExc(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function transNcDestroyGotExc() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var INS_BAD_SCHEME_NAME(default, null) : Int;
	
	@:overload @:public public function insBadSchemeName(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeName(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeName(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeName() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var INS_BAD_SCHEME_SPECIFIC_PART(default, null) : Int;
	
	@:overload @:public public function insBadSchemeSpecificPart(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeSpecificPart(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeSpecificPart(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insBadSchemeSpecificPart() : org.omg.CORBA.INTERNAL;
	
	@:public @:static @:final public static var INS_OTHER(default, null) : Int;
	
	@:overload @:public public function insOther(cs : org.omg.CORBA.CompletionStatus, t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insOther(cs : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insOther(t : java.lang.Throwable) : org.omg.CORBA.INTERNAL;
	
	@:overload @:public public function insOther() : org.omg.CORBA.INTERNAL;
	
	
}
