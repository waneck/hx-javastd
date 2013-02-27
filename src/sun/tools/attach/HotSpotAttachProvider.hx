package sun.tools.attach;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HotSpotAttachProvider extends com.sun.tools.attach.spi.AttachProvider
{
	@:overload public function new() : Void;
	
	@:overload public function checkAttachPermission() : Void;
	
	/*
	* This listVirtualMachines implementation is based on jvmstat. Can override
	* this in platform implementations when there is a more efficient mechanism
	* available.
	*/
	@:overload override public function listVirtualMachines() : java.util.List<com.sun.tools.attach.VirtualMachineDescriptor>;
	
	
}
/**
* A virtual machine descriptor to describe a HotSpot virtual machine.
*/
@:native('sun$tools$attach$HotSpotAttachProvider$HotSpotVirtualMachineDescriptor') @:internal extern class HotSpotAttachProvider_HotSpotVirtualMachineDescriptor extends com.sun.tools.attach.VirtualMachineDescriptor
{
	@:overload public function isAttachable() : Bool;
	
	
}
