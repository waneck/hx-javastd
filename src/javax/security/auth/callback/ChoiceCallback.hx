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
* <code>ChoiceCallback</code> to the <code>handle</code>
* method of a <code>CallbackHandler</code> to display a list of choices
* and to retrieve the selected choice(s).
*
* @see javax.security.auth.callback.CallbackHandler
*/
extern class ChoiceCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/**
	* Construct a <code>ChoiceCallback</code> with a prompt,
	* a list of choices, a default choice, and a boolean specifying
	* whether or not multiple selections from the list of choices are allowed.
	*
	* <p>
	*
	* @param prompt the prompt used to describe the list of choices. <p>
	*
	* @param choices the list of choices. <p>
	*
	* @param defaultChoice the choice to be used as the default choice
	*                  when the list of choices are displayed.  This value
	*                  is represented as an index into the
	*                  <code>choices</code> array. <p>
	*
	* @param multipleSelectionsAllowed boolean specifying whether or
	*                  not multiple selections can be made from the
	*                  list of choices.
	*
	* @exception IllegalArgumentException if <code>prompt</code> is null,
	*                  if <code>prompt</code> has a length of 0,
	*                  if <code>choices</code> is null,
	*                  if <code>choices</code> has a length of 0,
	*                  if any element from <code>choices</code> is null,
	*                  if any element from <code>choices</code>
	*                  has a length of 0 or if <code>defaultChoice</code>
	*                  does not fall within the array boundaries of
	*                  <code>choices</code>.
	*/
	@:overload public function new(prompt : String, choices : java.NativeArray<String>, defaultChoice : Int, multipleSelectionsAllowed : Bool) : Void;
	
	/**
	* Get the prompt.
	*
	* <p>
	*
	* @return the prompt.
	*/
	@:overload public function getPrompt() : String;
	
	/**
	* Get the list of choices.
	*
	* <p>
	*
	* @return the list of choices.
	*/
	@:overload public function getChoices() : java.NativeArray<String>;
	
	/**
	* Get the defaultChoice.
	*
	* <p>
	*
	* @return the defaultChoice, represented as an index into
	*          the <code>choices</code> list.
	*/
	@:overload public function getDefaultChoice() : Int;
	
	/**
	* Get the boolean determining whether multiple selections from
	* the <code>choices</code> list are allowed.
	*
	* <p>
	*
	* @return whether multiple selections are allowed.
	*/
	@:overload public function allowMultipleSelections() : Bool;
	
	/**
	* Set the selected choice.
	*
	* <p>
	*
	* @param selection the selection represented as an index into the
	*          <code>choices</code> list.
	*
	* @see #getSelectedIndexes
	*/
	@:overload public function setSelectedIndex(selection : Int) : Void;
	
	/**
	* Set the selected choices.
	*
	* <p>
	*
	* @param selections the selections represented as indexes into the
	*          <code>choices</code> list.
	*
	* @exception UnsupportedOperationException if multiple selections are
	*          not allowed, as determined by
	*          <code>allowMultipleSelections</code>.
	*
	* @see #getSelectedIndexes
	*/
	@:overload public function setSelectedIndexes(selections : java.NativeArray<Int>) : Void;
	
	/**
	* Get the selected choices.
	*
	* <p>
	*
	* @return the selected choices, represented as indexes into the
	*          <code>choices</code> list.
	*
	* @see #setSelectedIndexes
	*/
	@:overload public function getSelectedIndexes() : java.NativeArray<Int>;
	
	
}
