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
* <code>TextOutputCallback</code> to the <code>handle</code>
* method of a <code>CallbackHandler</code> to display information messages,
* warning messages and error messages.
*
* @see javax.security.auth.callback.CallbackHandler
*/
extern class TextOutputCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/** Information message. */
	public static var INFORMATION(default, null) : Int;
	
	/** Warning message. */
	public static var WARNING(default, null) : Int;
	
	/** Error message. */
	public static var ERROR(default, null) : Int;
	
	/**
	* Construct a TextOutputCallback with a message type and message
	* to be displayed.
	*
	* <p>
	*
	* @param messageType the message type (<code>INFORMATION</code>,
	*                  <code>WARNING</code> or <code>ERROR</code>). <p>
	*
	* @param message the message to be displayed. <p>
	*
	* @exception IllegalArgumentException if <code>messageType</code>
	*                  is not either <code>INFORMATION</code>,
	*                  <code>WARNING</code> or <code>ERROR</code>,
	*                  if <code>message</code> is null,
	*                  or if <code>message</code> has a length of 0.
	*/
	@:overload public function new(messageType : Int, message : String) : Void;
	
	/**
	* Get the message type.
	*
	* <p>
	*
	* @return the message type (<code>INFORMATION</code>,
	*                  <code>WARNING</code> or <code>ERROR</code>).
	*/
	@:overload public function getMessageType() : Int;
	
	/**
	* Get the message to be displayed.
	*
	* <p>
	*
	* @return the message to be displayed.
	*/
	@:overload public function getMessage() : String;
	
	
}
