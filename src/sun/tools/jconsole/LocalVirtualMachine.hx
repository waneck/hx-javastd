package sun.tools.jconsole;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class LocalVirtualMachine
{
	@:overload @:public public function new(vmid : Int, commandLine : String, canAttach : Bool, connectorAddress : String) : Void;
	
	@:overload @:public public function vmid() : Int;
	
	@:overload @:public public function isManageable() : Bool;
	
	@:overload @:public public function isAttachable() : Bool;
	
	@:overload @:public public function startManagementAgent() : Void;
	
	@:overload @:public public function connectorAddress() : String;
	
	@:overload @:public public function displayName() : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function getAllVirtualMachines() : java.util.Map<Null<Int>, sun.tools.jconsole.LocalVirtualMachine>;
	
	@:overload @:public @:static public static function getLocalVirtualMachine(vmid : Int) : sun.tools.jconsole.LocalVirtualMachine;
	
	
}
