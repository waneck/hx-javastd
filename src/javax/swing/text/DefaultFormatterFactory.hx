package javax.swing.text;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultFormatterFactory extends javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatterFactory implements java.io.Serializable
{
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>DefaultFormatterFactory</code> with the specified
	* <code>JFormattedTextField.AbstractFormatter</code>.
	*
	* @param defaultFormat JFormattedTextField.AbstractFormatter to be used
	*                      if a more specific
	*                      JFormattedTextField.AbstractFormatter can not be
	*                      found.
	*/
	@:overload @:public public function new(defaultFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Creates a <code>DefaultFormatterFactory</code> with the specified
	* <code>JFormattedTextField.AbstractFormatter</code>s.
	*
	* @param defaultFormat JFormattedTextField.AbstractFormatter to be used
	*                      if a more specific
	*                      JFormattedTextField.AbstractFormatter can not be
	*                      found.
	* @param displayFormat JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField does not have focus.
	*/
	@:overload @:public public function new(defaultFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, displayFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Creates a DefaultFormatterFactory with the specified
	* JFormattedTextField.AbstractFormatters.
	*
	* @param defaultFormat JFormattedTextField.AbstractFormatter to be used
	*                      if a more specific
	*                      JFormattedTextField.AbstractFormatter can not be
	*                      found.
	* @param displayFormat JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField does not have focus.
	* @param editFormat    JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField has focus.
	*/
	@:overload @:public public function new(defaultFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, displayFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, editFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Creates a DefaultFormatterFactory with the specified
	* JFormattedTextField.AbstractFormatters.
	*
	* @param defaultFormat JFormattedTextField.AbstractFormatter to be used
	*                      if a more specific
	*                      JFormattedTextField.AbstractFormatter can not be
	*                      found.
	* @param displayFormat JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField does not have focus.
	* @param editFormat    JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField has focus.
	* @param nullFormat    JFormattedTextField.AbstractFormatter to be used
	*                      when the JFormattedTextField has a null value.
	*/
	@:overload @:public public function new(defaultFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, displayFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, editFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter, nullFormat : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Sets the <code>JFormattedTextField.AbstractFormatter</code> to use as
	* a last resort, eg in case a display, edit or null
	* <code>JFormattedTextField.AbstractFormatter</code> has not been
	* specified.
	*
	* @param atf JFormattedTextField.AbstractFormatter used if a more
	*            specific is not specified
	*/
	@:overload @:public public function setDefaultFormatter(atf : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Returns the <code>JFormattedTextField.AbstractFormatter</code> to use
	* as a last resort, eg in case a display, edit or null
	* <code>JFormattedTextField.AbstractFormatter</code>
	* has not been specified.
	*
	* @return JFormattedTextField.AbstractFormatter used if a more specific
	*         one is not specified.
	*/
	@:overload @:public public function getDefaultFormatter() : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter;
	
	/**
	* Sets the <code>JFormattedTextField.AbstractFormatter</code> to use if
	* the <code>JFormattedTextField</code> is not being edited and either
	* the value is not-null, or the value is null and a null formatter has
	* has not been specified.
	*
	* @param atf JFormattedTextField.AbstractFormatter to use when the
	*            JFormattedTextField does not have focus
	*/
	@:overload @:public public function setDisplayFormatter(atf : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Returns the <code>JFormattedTextField.AbstractFormatter</code> to use
	* if the <code>JFormattedTextField</code> is not being edited and either
	* the value is not-null, or the value is null and a null formatter has
	* has not been specified.
	*
	* @return JFormattedTextField.AbstractFormatter to use when the
	*         JFormattedTextField does not have focus
	*/
	@:overload @:public public function getDisplayFormatter() : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter;
	
	/**
	* Sets the <code>JFormattedTextField.AbstractFormatter</code> to use if
	* the <code>JFormattedTextField</code> is being edited and either
	* the value is not-null, or the value is null and a null formatter has
	* has not been specified.
	*
	* @param atf JFormattedTextField.AbstractFormatter to use when the
	*            component has focus
	*/
	@:overload @:public public function setEditFormatter(atf : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Returns the <code>JFormattedTextField.AbstractFormatter</code> to use
	* if the <code>JFormattedTextField</code> is being edited and either
	* the value is not-null, or the value is null and a null formatter has
	* has not been specified.
	*
	* @return JFormattedTextField.AbstractFormatter to use when the
	*         component has focus
	*/
	@:overload @:public public function getEditFormatter() : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter;
	
	/**
	* Sets the formatter to use if the value of the JFormattedTextField is
	* null.
	*
	* @param atf JFormattedTextField.AbstractFormatter to use when
	* the value of the JFormattedTextField is null.
	*/
	@:overload @:public public function setNullFormatter(atf : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter) : Void;
	
	/**
	* Returns the formatter to use if the value is null.
	*
	* @return JFormattedTextField.AbstractFormatter to use when the value is
	*         null
	*/
	@:overload @:public public function getNullFormatter() : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter;
	
	/**
	* Returns either the default formatter, display formatter, editor
	* formatter or null formatter based on the state of the
	* JFormattedTextField.
	*
	* @param source JFormattedTextField requesting
	*               JFormattedTextField.AbstractFormatter
	* @return JFormattedTextField.AbstractFormatter to handle
	*         formatting duties.
	*/
	@:overload @:public override public function getFormatter(source : javax.swing.JFormattedTextField) : javax.swing.JFormattedTextField.JFormattedTextField_AbstractFormatter;
	
	
}
