package com.sun.tools.attach;
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
/**
* The exception thrown when an agent fails to initialize in the target
* Java virtual machine.
*
* <p> This exception is thrown by {@link
* com.sun.tools.attach.VirtualMachine#loadAgent VirtualMachine.loadAgent},
* {@link com.sun.tools.attach.VirtualMachine#loadAgentLibrary
* VirtualMachine.loadAgentLibrary}, {@link
* com.sun.tools.attach.VirtualMachine#loadAgentPath VirtualMachine.loadAgentPath}
* methods if an agent, or agent library, cannot be initialized.
* When thrown by <tt>VirtualMachine.loadAgentLibrary</tt>, or
* <tt>VirtualMachine.loadAgentPath</tt> then the exception encapsulates
* the error returned by the agent's <code>Agent_OnAttach</code> function.
* This error code can be obtained by invoking the {@link #returnValue() returnValue} method.
*/
extern class AgentInitializationException extends java.lang.Exception
{
	/**
	* Constructs an <code>AgentInitializationException</code> with
	* no detail message.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an <code>AgentInitializationException</code> with
	* the specified detail message.
	*
	* @param   s   the detail message.
	*/
	@:overload @:public public function new(s : String) : Void;
	
	/**
	* Constructs an <code>AgentInitializationException</code> with
	* the specified detail message and the return value from the
	* execution of the agent's <code>Agent_OnAttach</code> function.
	*
	* @param   s               the detail message.
	* @param   returnValue     the return value
	*/
	@:overload @:public public function new(s : String, returnValue : Int) : Void;
	
	/**
	* If the exception was created with the return value from the agent
	* <code>Agent_OnAttach</code> function then this returns that value,
	* otherwise returns <code>0</code>. </p>
	*
	* @return  the return value
	*/
	@:overload @:public public function returnValue() : Int;
	
	
}
