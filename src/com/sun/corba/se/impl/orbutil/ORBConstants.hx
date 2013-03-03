package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class ORBConstants
{
	@:public @:static @:final public static var STRINGIFY_PREFIX(default, null) : String;
	
	/* TAGS
	tag-request@omg.org
	FAQ on tags and tag allocation: http://doc.omg.org/ptc/99-02-01.
	http://doc.omg.org/standard-tags
	http://doc.omg.org/vendor-tags

	Last update:  19th August 2003 (ptc/03-08-14)

	// Legacy
	1 profile tag      0x4f4e4300              ("ONC\x00")
	1 profile tag      0x4e454f00              ("NEO\x00")
	1 profile tag      0x434f4f4c              ("COOL")
	16 service tags    0x4e454f00 - 0x4e454f0f ("NEO\x00" - "NEO\x0f")

	// Current
	16 VMCID           0x5355xxxx              ("SU\x00\x00" - "SU\xff\xff")
	16 profile tags    0x53554e00 - 0x53554e0f ("SUN\x00" - "SUN\x0f")
	16 ORB Type IDs    0x53554e00 - 0x53554e0f ("SUN\x00" - "SUN\x0f")
	64 service tags    0x53554e00 - 0x53554e3f ("SUN\x00" - "SUN\x3f")
	64 component tags  0x53554e00 - 0x53554e3f ("SUN\x00" - "SUN\x3f")
	*/
	@:public @:static @:final public static var NEO_FIRST_SERVICE_CONTEXT(default, null) : Int;
	
	@:public @:static @:final public static var NUM_NEO_SERVICE_CONTEXTS(default, null) : Int;
	
	@:public @:static @:final public static var TAG_ORB_VERSION(default, null) : Int;
	
	@:public @:static @:final public static var SUN_TAGGED_COMPONENT_ID_BASE(default, null) : Int;
	
	@:public @:static @:final public static var SUN_SERVICE_CONTEXT_ID_BASE(default, null) : Int;
	
	@:public @:static @:final public static var TAG_CONTAINER_ID(default, null) : Int;
	
	@:public @:static @:final public static var TAG_REQUEST_PARTITIONING_ID(default, null) : Int;
	
	@:public @:static @:final public static var TAG_JAVA_SERIALIZATION_ID(default, null) : Int;
	
	@:public @:static @:final public static var CONTAINER_ID_SERVICE_CONTEXT(default, null) : Int;
	
	@:public @:static @:final public static var SERVANT_CACHING_POLICY(default, null) : Int;
	
	@:public @:static @:final public static var ZERO_PORT_POLICY(default, null) : Int;
	
	@:public @:static @:final public static var COPY_OBJECT_POLICY(default, null) : Int;
	
	@:public @:static @:final public static var REQUEST_PARTITIONING_POLICY(default, null) : Int;
	
	@:public @:static @:final public static var TOA_SCID(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var FIRST_POA_SCID(default, null) : Int;
	
	@:public @:static @:final public static var MAX_POA_SCID(default, null) : Int;
	
	@:public @:static @:final public static var TRANSIENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var PERSISTENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var SC_TRANSIENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var SC_PERSISTENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var IISC_TRANSIENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var IISC_PERSISTENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var MINSC_TRANSIENT_SCID(default, null) : Int;
	
	@:public @:static @:final public static var MINSC_PERSISTENT_SCID(default, null) : Int;
	
	@:overload @:public @:static public static function isTransient(scid : Int) : Bool;
	
	@:overload @:public @:static public static function makePersistent(scid : Int) : Int;
	
	@:public @:static @:final public static var ORG_OMG_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var ORG_OMG_CORBA_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var INITIAL_HOST_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var INITIAL_PORT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var INITIAL_SERVICES_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_INIT_REF_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ORB_INIT_REF_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SUN_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var ALLOW_LOCAL_OPTIMIZATION(default, null) : String;
	
	@:public @:static @:final public static var SERVER_PORT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SERVER_HOST_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ORB_ID_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var OLD_ORB_ID_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ORB_SERVER_ID_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DEBUG_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var USE_REP_ID(default, null) : String;
	
	@:public @:static @:final public static var LISTEN_ON_ALL_INTERFACES(default, null) : String;
	
	@:public @:static @:final public static var GIOP_VERSION(default, null) : String;
	
	@:public @:static @:final public static var GIOP_FRAGMENT_SIZE(default, null) : String;
	
	@:public @:static @:final public static var GIOP_BUFFER_SIZE(default, null) : String;
	
	@:public @:static @:final public static var GIOP_11_BUFFMGR(default, null) : String;
	
	@:public @:static @:final public static var GIOP_12_BUFFMGR(default, null) : String;
	
	@:public @:static @:final public static var GIOP_TARGET_ADDRESSING(default, null) : String;
	
	@:public @:static @:final public static var GIOP_DEFAULT_FRAGMENT_SIZE(default, null) : Int;
	
	@:public @:static @:final public static var GIOP_DEFAULT_BUFFER_SIZE(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_GIOP_11_BUFFMGR(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_GIOP_12_BUFFMGR(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_DISP_OBJKEY(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var ADDR_DISP_PROFILE(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var ADDR_DISP_IOR(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var ADDR_DISP_HANDLE_ALL(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var GIOP_12_MSG_BODY_ALIGNMENT(default, null) : Int;
	
	@:public @:static @:final public static var GIOP_FRAGMENT_DIVISOR(default, null) : Int;
	
	@:public @:static @:final public static var GIOP_FRAGMENT_MINIMUM_SIZE(default, null) : Int;
	
	@:public @:static @:final public static var HIGH_WATER_MARK_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var LOW_WATER_MARK_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var NUMBER_TO_RECLAIM_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ACCEPTOR_CLASS_PREFIX_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var CONTACT_INFO_LIST_FACTORY_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var LEGACY_SOCKET_FACTORY_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_FACTORY_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var LISTEN_SOCKET_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var IOR_TO_SOCKET_INFO_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var IIOP_PRIMARY_TO_CONTACT_INFO_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var REQUEST_PARTITIONING_MIN_THREAD_POOL_ID(default, null) : Int;
	
	@:public @:static @:final public static var REQUEST_PARTITIONING_MAX_THREAD_POOL_ID(default, null) : Int;
	
	@:public @:static @:final public static var TRANSPORT_TCP_READ_TIMEOUTS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var TRANSPORT_TCP_INITIAL_TIME_TO_WAIT(default, null) : Int;
	
	@:public @:static @:final public static var TRANSPORT_TCP_MAX_TIME_TO_WAIT(default, null) : Int;
	
	@:public @:static @:final public static var TRANSPORT_TCP_GIOP_HEADER_MAX_TIME_TO_WAIT(default, null) : Int;
	
	@:public @:static @:final public static var TRANSPORT_TCP_TIME_TO_WAIT_BACKOFF_FACTOR(default, null) : Int;
	
	@:public @:static @:final public static var USE_NIO_SELECT_TO_WAIT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ACCEPTOR_SOCKET_TYPE_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ACCEPTOR_SOCKET_USE_WORKER_THREAD_FOR_EVENT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var CONNECTION_SOCKET_TYPE_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var CONNECTION_SOCKET_USE_WORKER_THREAD_FOR_EVENT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DISABLE_DIRECT_BYTE_BUFFER_USE_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SOCKET(default, null) : String;
	
	@:public @:static @:final public static var SOCKETCHANNEL(default, null) : String;
	
	@:public @:static @:final public static var PERSISTENT_SERVER_PORT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SERVER_ID_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var BAD_SERVER_ID_HANDLER_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ACTIVATED_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SERVER_NAME_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SERVER_DEF_VERIFY_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SUN_LC_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var SUN_LC_VERSION_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var JTS_CLASS_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ENABLE_JAVA_SERIALIZATION_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var PI_ORB_INITIALIZER_CLASS_PREFIX(default, null) : String;
	
	@:public @:static @:final public static var USE_DYNAMIC_STUB_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DYNAMIC_STUB_FACTORY_FACTORY_CLASS(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_INITIAL_PORT(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_INS_HOST(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_INS_PORT(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_INS_GIOP_MAJOR_VERSION(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_INS_GIOP_MINOR_VERSION(default, null) : Int;
	
	@:public @:static @:final public static var MAJORNUMBER_SUPPORTED(default, null) : Int;
	
	@:public @:static @:final public static var MINORNUMBERMAX(default, null) : Int;
	
	@:public @:static @:final public static var TRANSIENT(default, null) : Int;
	
	@:public @:static @:final public static var PERSISTENT(default, null) : Int;
	
	@:public @:static @:final public static var DB_DIR_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DB_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var ORBD_PORT_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var SERVER_POLLING_TIME(default, null) : String;
	
	@:public @:static @:final public static var SERVER_STARTUP_DELAY(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_ACTIVATION_PORT(default, null) : Int;
	
	@:public @:static @:final public static var RI_NAMESERVICE_PORT(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_SERVER_POLLING_TIME(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_SERVER_STARTUP_DELAY(default, null) : Int;
	
	@:public @:static @:final public static var LOG_LEVEL_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var LOG_RESOURCE_FILE(default, null) : String;
	
	@:public @:static @:final public static var TRANSIENT_NAME_SERVICE_NAME(default, null) : String;
	
	@:public @:static @:final public static var PERSISTENT_NAME_SERVICE_NAME(default, null) : String;
	
	@:public @:static @:final public static var NAME_SERVICE_SERVER_ID(default, null) : String;
	
	@:public @:static @:final public static var ROOT_POA_NAME(default, null) : String;
	
	@:public @:static @:final public static var POA_CURRENT_NAME(default, null) : String;
	
	@:public @:static @:final public static var SERVER_ACTIVATOR_NAME(default, null) : String;
	
	@:public @:static @:final public static var SERVER_LOCATOR_NAME(default, null) : String;
	
	@:public @:static @:final public static var SERVER_REPOSITORY_NAME(default, null) : String;
	
	@:public @:static @:final public static var INITIAL_NAME_SERVICE_NAME(default, null) : String;
	
	@:public @:static @:final public static var TRANSACTION_CURRENT_NAME(default, null) : String;
	
	@:public @:static @:final public static var DYN_ANY_FACTORY_NAME(default, null) : String;
	
	@:public @:static @:final public static var PI_CURRENT_NAME(default, null) : String;
	
	@:public @:static @:final public static var CODEC_FACTORY_NAME(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_DB_DIR(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_DB_NAME(default, null) : String;
	
	@:public @:static @:final public static var INITIAL_ORB_DB(default, null) : String;
	
	@:public @:static @:final public static var SERVER_LOG_DIR(default, null) : String;
	
	@:public @:static @:final public static var ORBID_DIR_BASE(default, null) : String;
	
	@:public @:static @:final public static var ORBID_DB_FILE_NAME(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_INACTIVITY_TIMEOUT(default, null) : Int;
	
	@:public @:static @:final public static var THREADPOOL_DEFAULT_NAME(default, null) : String;
	
	@:public @:static @:final public static var WORKQUEUE_DEFAULT_NAME(default, null) : String;
	
	@:public @:static @:final public static var LEGACY_SUN_NOT_SERIALIZABLE(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_ALWAYS_SEND_CODESET_CTX(default, null) : Bool;
	
	@:public @:static @:final public static var ALWAYS_SEND_CODESET_CTX_PROPERTY(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_USE_BYTE_ORDER_MARKERS(default, null) : Bool;
	
	@:public @:static @:final public static var USE_BOMS(default, null) : String;
	
	@:public @:static @:final public static var DEFAULT_USE_BYTE_ORDER_MARKERS_IN_ENCAPS(default, null) : Bool;
	
	@:public @:static @:final public static var USE_BOMS_IN_ENCAPS(default, null) : String;
	
	@:public @:static @:final public static var CHAR_CODESETS(default, null) : String;
	
	@:public @:static @:final public static var WCHAR_CODESETS(default, null) : String;
	
	@:public @:static @:final public static var STREAM_FORMAT_VERSION_1(default, null) : java.StdTypes.Int8;
	
	@:public @:static @:final public static var STREAM_FORMAT_VERSION_2(default, null) : java.StdTypes.Int8;
	
	
}
