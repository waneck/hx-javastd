package javax.swing.text;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <code>DefaultFormatter</code> formats aribtrary objects. Formatting is done
* by invoking the <code>toString</code> method. In order to convert the
* value back to a String, your class must provide a constructor that
* takes a String argument. If no single argument constructor that takes a
* String is found, the returned value will be the String passed into
* <code>stringToValue</code>.
* <p>
* Instances of <code>DefaultFormatter</code> can not be used in multiple
* instances of <code>JFormattedTextField</code>. To obtain a copy of
* an already configured <code>DefaultFormatter</code>, use the
* <code>clone</code> method.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see javax.swing.JFormattedTextField.AbstractFormatter
*
* @since 1.4
*/
@:require(java4) extern class DefaultFormatter extends javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Creates a DefaultFormatter.
	*/
	@:overload public function new() : Void;
	
	/**
	* Installs the <code>DefaultFormatter</code> onto a particular
	* <code>JFormattedTextField</code>.
	* This will invoke <code>valueToString</code> to convert the
	* current value from the <code>JFormattedTextField</code> to
	* a String. This will then install the <code>Action</code>s from
	* <code>getActions</code>, the <code>DocumentFilter</code>
	* returned from <code>getDocumentFilter</code> and the
	* <code>NavigationFilter</code> returned from
	* <code>getNavigationFilter</code> onto the
	* <code>JFormattedTextField</code>.
	* <p>
	* Subclasses will typically only need to override this if they
	* wish to install additional listeners on the
	* <code>JFormattedTextField</code>.
	* <p>
	* If there is a <code>ParseException</code> in converting the
	* current value to a String, this will set the text to an empty
	* String, and mark the <code>JFormattedTextField</code> as being
	* in an invalid state.
	* <p>
	* While this is a public method, this is typically only useful
	* for subclassers of <code>JFormattedTextField</code>.
	* <code>JFormattedTextField</code> will invoke this method at
	* the appropriate times when the value changes, or its internal
	* state changes.
	*
	* @param ftf JFormattedTextField to format for, may be null indicating
	*            uninstall from current JFormattedTextField.
	*/
	@:overload public function install(ftf : javax.swing.JFormattedTextField) : Void;
	
	/**
	* Sets when edits are published back to the
	* <code>JFormattedTextField</code>. If true, <code>commitEdit</code>
	* is invoked after every valid edit (any time the text is edited). On
	* the other hand, if this is false than the <code>DefaultFormatter</code>
	* does not publish edits back to the <code>JFormattedTextField</code>.
	* As such, the only time the value of the <code>JFormattedTextField</code>
	* will change is when <code>commitEdit</code> is invoked on
	* <code>JFormattedTextField</code>, typically when enter is pressed
	* or focus leaves the <code>JFormattedTextField</code>.
	*
	* @param commit Used to indicate when edits are commited back to the
	*               JTextComponent
	*/
	@:overload public function setCommitsOnValidEdit(commit : Bool) : Void;
	
	/**
	* Returns when edits are published back to the
	* <code>JFormattedTextField</code>.
	*
	* @return true if edits are commited after evey valid edit
	*/
	@:overload public function getCommitsOnValidEdit() : Bool;
	
	/**
	* Configures the behavior when inserting characters. If
	* <code>overwriteMode</code> is true (the default), new characters
	* overwrite existing characters in the model.
	*
	* @param overwriteMode Indicates if overwrite or overstrike mode is used
	*/
	@:overload public function setOverwriteMode(overwriteMode : Bool) : Void;
	
	/**
	* Returns the behavior when inserting characters.
	*
	* @return true if newly inserted characters overwrite existing characters
	*/
	@:overload public function getOverwriteMode() : Bool;
	
	/**
	* Sets whether or not the value being edited is allowed to be invalid
	* for a length of time (that is, <code>stringToValue</code> throws
	* a <code>ParseException</code>).
	* It is often convenient to allow the user to temporarily input an
	* invalid value.
	*
	* @param allowsInvalid Used to indicate if the edited value must always
	*        be valid
	*/
	@:overload public function setAllowsInvalid(allowsInvalid : Bool) : Void;
	
	/**
	* Returns whether or not the value being edited is allowed to be invalid
	* for a length of time.
	*
	* @return false if the edited value must always be valid
	*/
	@:overload public function getAllowsInvalid() : Bool;
	
	/**
	* Sets that class that is used to create new Objects. If the
	* passed in class does not have a single argument constructor that
	* takes a String, String values will be used.
	*
	* @param valueClass Class used to construct return value from
	*        stringToValue
	*/
	@:overload public function setValueClass(valueClass : Class<Dynamic>) : Void;
	
	/**
	* Returns that class that is used to create new Objects.
	*
	* @return Class used to constuct return value from stringToValue
	*/
	@:overload public function getValueClass() : Class<Dynamic>;
	
	/**
	* Converts the passed in String into an instance of
	* <code>getValueClass</code> by way of the constructor that
	* takes a String argument. If <code>getValueClass</code>
	* returns null, the Class of the current value in the
	* <code>JFormattedTextField</code> will be used. If this is null, a
	* String will be returned. If the constructor thows an exception, a
	* <code>ParseException</code> will be thrown. If there is no single
	* argument String constructor, <code>string</code> will be returned.
	*
	* @throws ParseException if there is an error in the conversion
	* @param string String to convert
	* @return Object representation of text
	*/
	@:overload override public function stringToValue(string : String) : Dynamic;
	
	/**
	* Converts the passed in Object into a String by way of the
	* <code>toString</code> method.
	*
	* @throws ParseException if there is an error in the conversion
	* @param value Value to convert
	* @return String representation of value
	*/
	@:overload override public function valueToString(value : Dynamic) : String;
	
	/**
	* Returns the <code>DocumentFilter</code> used to restrict the characters
	* that can be input into the <code>JFormattedTextField</code>.
	*
	* @return DocumentFilter to restrict edits
	*/
	@:overload override private function getDocumentFilter() : javax.swing.text.DocumentFilter;
	
	/**
	* Returns the <code>NavigationFilter</code> used to restrict where the
	* cursor can be placed.
	*
	* @return NavigationFilter to restrict navigation
	*/
	@:overload override private function getNavigationFilter() : javax.swing.text.NavigationFilter;
	
	/**
	* Creates a copy of the DefaultFormatter.
	*
	* @return copy of the DefaultFormatter
	*/
	@:overload override public function clone() : Dynamic;
	
	
}
/**
* ReplaceHolder is used to track where insert/remove/replace is
* going to happen.
*/
@:native('javax$swing$text$DefaultFormatter$ReplaceHolder') @:internal extern class DefaultFormatter_ReplaceHolder
{
	
}
/**
* NavigationFilter implementation that calls back to methods with
* same name in DefaultFormatter.
*/
@:native('javax$swing$text$DefaultFormatter$DefaultNavigationFilter') @:internal extern class DefaultFormatter_DefaultNavigationFilter extends javax.swing.text.NavigationFilter implements java.io.Serializable
{
	@:overload public function setDot(fb : javax.swing.text.NavigationFilter.NavigationFilter_FilterBypass, dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	@:overload public function moveDot(fb : javax.swing.text.NavigationFilter.NavigationFilter_FilterBypass, dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	@:overload override public function getNextVisualPositionFrom(text : javax.swing.text.JTextComponent, pos : Int, bias : javax.swing.text.Position.Position_Bias, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
/**
* DocumentFilter implementation that calls back to the replace
* method of DefaultFormatter.
*/
@:native('javax$swing$text$DefaultFormatter$DefaultDocumentFilter') @:internal extern class DefaultFormatter_DefaultDocumentFilter extends javax.swing.text.DocumentFilter implements java.io.Serializable
{
	@:overload public function remove(fb : javax.swing.text.DocumentFilter.DocumentFilter_FilterBypass, offset : Int, length : Int) : Void;
	
	@:overload public function insertString(fb : javax.swing.text.DocumentFilter.DocumentFilter_FilterBypass, offset : Int, string : String, attr : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function replace(fb : javax.swing.text.DocumentFilter.DocumentFilter_FilterBypass, offset : Int, length : Int, text : String, attr : javax.swing.text.AttributeSet) : Void;
	
	
}
