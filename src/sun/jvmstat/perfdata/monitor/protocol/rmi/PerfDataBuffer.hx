package sun.jvmstat.perfdata.monitor.protocol.rmi;
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
extern class PerfDataBuffer extends sun.jvmstat.perfdata.monitor.AbstractPerfDataBuffer
{
	/**
	* Create a PerfDataBuffer instance for accessing the specified
	* instrumentation buffer.
	*
	* @param rvm the proxy to the remote MonitredVm object
	* @param lvmid the local Java Virtual Machine Identifier of the
	*              remote target.
	*
	* @throws MonitorException
	*/
	@:overload @:public public function new(rvm : sun.jvmstat.monitor.remote.RemoteVm, lvmid : Int) : Void;
	
	/**
	* Get a copy of the remote instrumentation buffer.
	*<p>
	* The data in the remote instrumentation buffer is copied into
	* the local byte buffer.
	*
	* @param buffer the buffer to receive the copy of the remote
	*               instrumentation buffer.
	* @throws RemoteException Thrown on any communications errors with
	*                         the remote system.
	*/
	@:overload @:public public function sample(buffer : java.nio.ByteBuffer) : Void;
	
	
}
