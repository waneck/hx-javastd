package sun.security.util;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SecurityConstants
{
	@:public @:static @:final public static var FILE_DELETE_ACTION(default, null) : String;
	
	@:public @:static @:final public static var FILE_EXECUTE_ACTION(default, null) : String;
	
	@:public @:static @:final public static var FILE_READ_ACTION(default, null) : String;
	
	@:public @:static @:final public static var FILE_WRITE_ACTION(default, null) : String;
	
	@:public @:static @:final public static var FILE_READLINK_ACTION(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_RESOLVE_ACTION(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_CONNECT_ACTION(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_LISTEN_ACTION(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_ACCEPT_ACTION(default, null) : String;
	
	@:public @:static @:final public static var SOCKET_CONNECT_ACCEPT_ACTION(default, null) : String;
	
	@:public @:static @:final public static var PROPERTY_RW_ACTION(default, null) : String;
	
	@:public @:static @:final public static var PROPERTY_READ_ACTION(default, null) : String;
	
	@:public @:static @:final public static var PROPERTY_WRITE_ACTION(default, null) : String;
	
	@:public @:static @:final public static var ALL_PERMISSION(default, null) : java.security.AllPermission;
	
	@:public @:static @:final public static var SPECIFY_HANDLER_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var SET_PROXYSELECTOR_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var GET_PROXYSELECTOR_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var SET_COOKIEHANDLER_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var GET_COOKIEHANDLER_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var SET_RESPONSECACHE_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var GET_RESPONSECACHE_PERMISSION(default, null) : java.net.NetPermission;
	
	@:public @:static @:final public static var CREATE_CLASSLOADER_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var CHECK_MEMBER_ACCESS_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var MODIFY_THREAD_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var MODIFY_THREADGROUP_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var GET_PD_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var GET_CLASSLOADER_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var STOP_THREAD_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var GET_STACK_TRACE_PERMISSION(default, null) : java.lang.RuntimePermission;
	
	@:public @:static @:final public static var CREATE_ACC_PERMISSION(default, null) : java.security.SecurityPermission;
	
	@:public @:static @:final public static var GET_COMBINER_PERMISSION(default, null) : java.security.SecurityPermission;
	
	@:public @:static @:final public static var GET_POLICY_PERMISSION(default, null) : java.security.SecurityPermission;
	
	@:public @:static @:final public static var LOCAL_LISTEN_PERMISSION(default, null) : java.net.SocketPermission;
	
	
}
/**
* Permission type used when AWT is not present.
*/
@:native('sun$security$util$SecurityConstants$FakeAWTPermission') @:internal extern class SecurityConstants_FakeAWTPermission extends java.security.BasicPermission
{
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
/**
* Permission factory used when AWT is not present.
*/
@:native('sun$security$util$SecurityConstants$FakeAWTPermissionFactory') @:internal extern class SecurityConstants_FakeAWTPermissionFactory implements sun.security.util.PermissionFactory<sun.security.util.SecurityConstants.SecurityConstants_FakeAWTPermission>
{
	@:overload @:public public function newPermission(name : String) : sun.security.util.SecurityConstants.SecurityConstants_FakeAWTPermission;
	
	
}
/**
* AWT Permissions used in the JDK.
*/
@:native('sun$security$util$SecurityConstants$AWT') extern class SecurityConstants_AWT
{
	@:public @:static @:final public static var TOPLEVEL_WINDOW_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var ACCESS_CLIPBOARD_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var CHECK_AWT_EVENTQUEUE_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var TOOLKIT_MODALITY_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var READ_DISPLAY_PIXELS_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var CREATE_ROBOT_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var WATCH_MOUSE_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var SET_WINDOW_ALWAYS_ON_TOP_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var ALL_AWT_EVENTS_PERMISSION(default, null) : java.security.Permission;
	
	@:public @:static @:final public static var ACCESS_SYSTEM_TRAY_PERMISSION(default, null) : java.security.Permission;
	
	
}
