package sun.tools.jstatd;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* Concrete implementation of the RemoteHost interface for the HotSpot
* PerfData <em>rmi:</em> protocol.
* <p>
* This class provides remote access to the instrumentation exported
* by HotSpot Java Virtual Machines through the PerfData shared memory
* interface.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class RemoteHostImpl implements sun.jvmstat.monitor.remote.RemoteHost implements sun.jvmstat.monitor.event.HostListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function attachVm(lvmid : Int, mode : String) : sun.jvmstat.monitor.remote.RemoteVm;
	
	@:overload @:public public function detachVm(rvm : sun.jvmstat.monitor.remote.RemoteVm) : Void;
	
	@:overload @:public public function activeVms() : java.NativeArray<Int>;
	
	@:overload @:public public function vmStatusChanged(ev : sun.jvmstat.monitor.event.VmStatusChangeEvent) : Void;
	
	@:overload @:public public function disconnected(ev : sun.jvmstat.monitor.event.HostEvent) : Void;
	
	
}
