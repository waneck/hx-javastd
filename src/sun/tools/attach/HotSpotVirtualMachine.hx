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
extern class HotSpotVirtualMachine extends com.sun.tools.attach.VirtualMachine
{
	/*
	* Load agent library - library name will be expanded in target VM
	*/
	@:overload @:public override public function loadAgentLibrary(agentLibrary : String, options : String) : Void;
	
	/*
	* Load agent - absolute path of library provided to target VM
	*/
	@:overload @:public override public function loadAgentPath(agentLibrary : String, options : String) : Void;
	
	/*
	* Load JPLIS agent which will load the agent JAR file and invoke
	* the agentmain method.
	*/
	@:overload @:public override public function loadAgent(agent : String, options : String) : Void;
	
	/*
	* Send "properties" command to target VM
	*/
	@:overload @:public override public function getSystemProperties() : java.util.Properties;
	
	@:overload @:public override public function getAgentProperties() : java.util.Properties;
	
	@:overload @:public public function localDataDump() : Void;
	
	@:overload @:public public function remoteDataDump(args : java.NativeArray<Dynamic>) : java.io.InputStream;
	
	@:overload @:public public function dumpHeap(args : java.NativeArray<Dynamic>) : java.io.InputStream;
	
	@:overload @:public public function heapHisto(args : java.NativeArray<Dynamic>) : java.io.InputStream;
	
	@:overload @:public public function setFlag(name : String, value : String) : java.io.InputStream;
	
	@:overload @:public public function printFlag(name : String) : java.io.InputStream;
	
	@:overload @:public public function executeJCmd(command : String) : java.io.InputStream;
	
	
}
