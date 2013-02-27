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
* <code>TextInputCallback</code> to the <code>handle</code>
* method of a <code>CallbackHandler</code> to retrieve generic text
* information.
*
* @see javax.security.auth.callback.CallbackHandler
*/
extern class TextInputCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/**
	* Construct a <code>TextInputCallback</code> with a prompt.
	*
	* <p>
	*
	* @param prompt the prompt used to request the information.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null
	*                  or if <code>prompt</code> has a length of 0.
	*/
	@:overload public function new(prompt : String) : Void;
	
	/**
	* Construct a <code>TextInputCallback</code> with a prompt
	* and default input value.
	*
	* <p>
	*
	* @param prompt the prompt used to request the information. <p>
	*
	* @param defaultText the text to be used as the default text displayed
	*                  with the prompt.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null,
	*                  if <code>prompt</code> has a length of 0,
	*                  if <code>defaultText</code> is null
	*                  or if <code>defaultText</code> has a length of 0.
	*/
	@:overload public function new(prompt : String, defaultText : String) : Void;
	
	/**
	* Get the prompt.
	*
	* <p>
	*
	* @return the prompt.
	*/
	@:overload public function getPrompt() : String;
	
	/**
	* Get the default text.
	*
	* <p>
	*
	* @return the default text, or null if this <code>TextInputCallback</code>
	*          was not instantiated with <code>defaultText</code>.
	*/
	@:overload public function getDefaultText() : String;
	
	/**
	* Set the retrieved text.
	*
	* <p>
	*
	* @param text the retrieved text, which may be null.
	*
	* @see #getText
	*/
	@:overload public function setText(text : String) : Void;
	
	/**
	* Get the retrieved text.
	*
	* <p>
	*
	* @return the retrieved text, which may be null.
	*
	* @see #setText
	*/
	@:overload public function getText() : String;
	
	
}
