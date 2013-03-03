package javax.security.auth.callback;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* <p> Underlying security services instantiate and pass a
* <code>NameCallback</code> to the <code>handle</code>
* method of a <code>CallbackHandler</code> to retrieve name information.
*
* @see javax.security.auth.callback.CallbackHandler
*/
extern class NameCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/**
	* Construct a <code>NameCallback</code> with a prompt.
	*
	* <p>
	*
	* @param prompt the prompt used to request the name.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null
	*                  or if <code>prompt</code> has a length of 0.
	*/
	@:overload @:public public function new(prompt : String) : Void;
	
	/**
	* Construct a <code>NameCallback</code> with a prompt
	* and default name.
	*
	* <p>
	*
	* @param prompt the prompt used to request the information. <p>
	*
	* @param defaultName the name to be used as the default name displayed
	*                  with the prompt.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null,
	*                  if <code>prompt</code> has a length of 0,
	*                  if <code>defaultName</code> is null,
	*                  or if <code>defaultName</code> has a length of 0.
	*/
	@:overload @:public public function new(prompt : String, defaultName : String) : Void;
	
	/**
	* Get the prompt.
	*
	* <p>
	*
	* @return the prompt.
	*/
	@:overload @:public public function getPrompt() : String;
	
	/**
	* Get the default name.
	*
	* <p>
	*
	* @return the default name, or null if this <code>NameCallback</code>
	*          was not instantiated with a <code>defaultName</code>.
	*/
	@:overload @:public public function getDefaultName() : String;
	
	/**
	* Set the retrieved name.
	*
	* <p>
	*
	* @param name the retrieved name (which may be null).
	*
	* @see #getName
	*/
	@:overload @:public public function setName(name : String) : Void;
	
	/**
	* Get the retrieved name.
	*
	* <p>
	*
	* @return the retrieved name (which may be null)
	*
	* @see #setName
	*/
	@:overload @:public public function getName() : String;
	
	
}
