package java.rmi.activation;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
* An <code>UnknownObjectException</code> is thrown by methods of classes and
* interfaces in the <code>java.rmi.activation</code> package when the
* <code>ActivationID</code> parameter to the method is determined to be
* invalid.  An <code>ActivationID</code> is invalid if it is not currently
* known by the <code>ActivationSystem</code>.  An <code>ActivationID</code>
* is obtained by the <code>ActivationSystem.registerObject</code> method.
* An <code>ActivationID</code> is also obtained during the
* <code>Activatable.register</code> call.
*
* @author  Ann Wollrath
* @since   1.2
* @see     java.rmi.activation.Activatable
* @see     java.rmi.activation.ActivationGroup
* @see     java.rmi.activation.ActivationID
* @see     java.rmi.activation.ActivationMonitor
* @see     java.rmi.activation.ActivationSystem
* @see     java.rmi.activation.Activator
*/
@:require(java2) extern class UnknownObjectException extends java.rmi.activation.ActivationException
{
	/**
	* Constructs an <code>UnknownObjectException</code> with the specified
	* detail message.
	*
	* @param s the detail message
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(s : String) : Void;
	
	
}
