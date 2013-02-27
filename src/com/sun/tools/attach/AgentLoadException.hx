package com.sun.tools.attach;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* The exception thrown when an agent cannot be loaded into the target
* Java virtual machine.
*
* <p> This exception is thrown by {@link
* com.sun.tools.attach.VirtualMachine#loadAgent VirtualMachine.loadAgent} or
* {@link com.sun.tools.attach.VirtualMachine#loadAgentLibrary
* VirtualMachine.loadAgentLibrary}, {@link
* com.sun.tools.attach.VirtualMachine#loadAgentPath loadAgentPath} methods
* if the agent, or agent library, cannot be loaded.
*/
extern class AgentLoadException extends java.lang.Exception
{
	/**
	* Constructs an <code>AgentLoadException</code> with
	* no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an <code>AgentLoadException</code> with
	* the specified detail message.
	*
	* @param   s   the detail message.
	*/
	@:overload public function new(s : String) : Void;
	
	
}
