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
* <code>MaskFormatter</code> is used to format and edit strings. The behavior
* of a <code>MaskFormatter</code> is controlled by way of a String mask
* that specifies the valid characters that can be contained at a particular
* location in the <code>Document</code> model. The following characters can
* be specified:
*
* <table border=1 summary="Valid characters and their descriptions">
* <tr>
*    <th>Character&nbsp;</th>
*    <th><p align="left">Description</p></th>
* </tr>
* <tr>
*    <td>#</td>
*    <td>Any valid number, uses <code>Character.isDigit</code>.</td>
* </tr>
* <tr>
*    <td>'</td>
*    <td>Escape character, used to escape any of the
*       special formatting characters.</td>
* </tr>
* <tr>
*    <td>U</td><td>Any character (<code>Character.isLetter</code>). All
*        lowercase letters are mapped to upper case.</td>
* </tr>
* <tr><td>L</td><td>Any character (<code>Character.isLetter</code>). All
*        upper case letters are mapped to lower case.</td>
* </tr>
* <tr><td>A</td><td>Any character or number (<code>Character.isLetter</code>
*       or <code>Character.isDigit</code>)</td>
* </tr>
* <tr><td>?</td><td>Any character
*        (<code>Character.isLetter</code>).</td>
* </tr>
* <tr><td>*</td><td>Anything.</td></tr>
* <tr><td>H</td><td>Any hex character (0-9, a-f or A-F).</td></tr>
* </table>
*
* <p>
* Typically characters correspond to one char, but in certain languages this
* is not the case. The mask is on a per character basis, and will thus
* adjust to fit as many chars as are needed.
* <p>
* You can further restrict the characters that can be input by the
* <code>setInvalidCharacters</code> and <code>setValidCharacters</code>
* methods. <code>setInvalidCharacters</code> allows you to specify
* which characters are not legal. <code>setValidCharacters</code> allows
* you to specify which characters are valid. For example, the following
* code block is equivalent to a mask of '0xHHH' with no invalid/valid
* characters:
* <pre>
* MaskFormatter formatter = new MaskFormatter("0x***");
* formatter.setValidCharacters("0123456789abcdefABCDEF");
* </pre>
* <p>
* When initially formatting a value if the length of the string is
* less than the length of the mask, two things can happen. Either
* the placeholder string will be used, or the placeholder character will
* be used. Precedence is given to the placeholder string. For example:
* <pre>
*   MaskFormatter formatter = new MaskFormatter("###-####");
*   formatter.setPlaceholderCharacter('_');
*   formatter.getDisplayValue(tf, "123");
* </pre>
* <p>
* Would result in the string '123-____'. If
* <code>setPlaceholder("555-1212")</code> was invoked '123-1212' would
* result. The placeholder String is only used on the initial format,
* on subsequent formats only the placeholder character will be used.
* <p>
* If a <code>MaskFormatter</code> is configured to only allow valid characters
* (<code>setAllowsInvalid(false)</code>) literal characters will be skipped as
* necessary when editing. Consider a <code>MaskFormatter</code> with
* the mask "###-####" and current value "555-1212". Using the right
* arrow key to navigate through the field will result in (| indicates the
* position of the caret):
* <pre>
*   |555-1212
*   5|55-1212
*   55|5-1212
*   555-|1212
*   555-1|212
* </pre>
* The '-' is a literal (non-editable) character, and is skipped.
* <p>
* Similar behavior will result when editing. Consider inserting the string
* '123-45' and '12345' into the <code>MaskFormatter</code> in the
* previous example. Both inserts will result in the same String,
* '123-45__'. When <code>MaskFormatter</code>
* is processing the insert at character position 3 (the '-'), two things can
* happen:
* <ol>
*   <li>If the inserted character is '-', it is accepted.
*   <li>If the inserted character matches the mask for the next non-literal
*       character, it is accepted at the new location.
*   <li>Anything else results in an invalid edit
* </ol>
* <p>
* By default <code>MaskFormatter</code> will not allow invalid edits, you can
* change this with the <code>setAllowsInvalid</code> method, and will
* commit edits on valid edits (use the <code>setCommitsOnValidEdit</code> to
* change this).
* <p>
* By default, <code>MaskFormatter</code> is in overwrite mode. That is as
* characters are typed a new character is not inserted, rather the character
* at the current location is replaced with the newly typed character. You
* can change this behavior by way of the method <code>setOverwriteMode</code>.
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
* @since 1.4
*/
@:require(java4) extern class MaskFormatter extends javax.swing.text.DefaultFormatter
{
	/**
	* Creates a MaskFormatter with no mask.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>MaskFormatter</code> with the specified mask.
	* A <code>ParseException</code>
	* will be thrown if <code>mask</code> is an invalid mask.
	*
	* @throws ParseException if mask does not contain valid mask characters
	*/
	@:overload @:public public function new(mask : String) : Void;
	
	/**
	* Sets the mask dictating the legal characters.
	* This will throw a <code>ParseException</code> if <code>mask</code> is
	* not valid.
	*
	* @throws ParseException if mask does not contain valid mask characters
	*/
	@:overload @:public public function setMask(mask : String) : Void;
	
	/**
	* Returns the formatting mask.
	*
	* @return Mask dictating legal character values.
	*/
	@:overload @:public public function getMask() : String;
	
	/**
	* Allows for further restricting of the characters that can be input.
	* Only characters specified in the mask, not in the
	* <code>invalidCharacters</code>, and in
	* <code>validCharacters</code> will be allowed to be input. Passing
	* in null (the default) implies the valid characters are only bound
	* by the mask and the invalid characters.
	*
	* @param validCharacters If non-null, specifies legal characters.
	*/
	@:overload @:public public function setValidCharacters(validCharacters : String) : Void;
	
	/**
	* Returns the valid characters that can be input.
	*
	* @return Legal characters
	*/
	@:overload @:public public function getValidCharacters() : String;
	
	/**
	* Allows for further restricting of the characters that can be input.
	* Only characters specified in the mask, not in the
	* <code>invalidCharacters</code>, and in
	* <code>validCharacters</code> will be allowed to be input. Passing
	* in null (the default) implies the valid characters are only bound
	* by the mask and the valid characters.
	*
	* @param invalidCharacters If non-null, specifies illegal characters.
	*/
	@:overload @:public public function setInvalidCharacters(invalidCharacters : String) : Void;
	
	/**
	* Returns the characters that are not valid for input.
	*
	* @return illegal characters.
	*/
	@:overload @:public public function getInvalidCharacters() : String;
	
	/**
	* Sets the string to use if the value does not completely fill in
	* the mask. A null value implies the placeholder char should be used.
	*
	* @param placeholder String used when formatting if the value does not
	*        completely fill the mask
	*/
	@:overload @:public public function setPlaceholder(placeholder : String) : Void;
	
	/**
	* Returns the String to use if the value does not completely fill
	* in the mask.
	*
	* @return String used when formatting if the value does not
	*        completely fill the mask
	*/
	@:overload @:public public function getPlaceholder() : String;
	
	/**
	* Sets the character to use in place of characters that are not present
	* in the value, ie the user must fill them in. The default value is
	* a space.
	* <p>
	* This is only applicable if the placeholder string has not been
	* specified, or does not completely fill in the mask.
	*
	* @param placeholder Character used when formatting if the value does not
	*        completely fill the mask
	*/
	@:overload @:public public function setPlaceholderCharacter(placeholder : java.StdTypes.Char16) : Void;
	
	/**
	* Returns the character to use in place of characters that are not present
	* in the value, ie the user must fill them in.
	*
	* @return Character used when formatting if the value does not
	*        completely fill the mask
	*/
	@:overload @:public public function getPlaceholderCharacter() : java.StdTypes.Char16;
	
	/**
	* If true, the returned value and set value will also contain the literal
	* characters in mask.
	* <p>
	* For example, if the mask is <code>'(###) ###-####'</code>, the
	* current value is <code>'(415) 555-1212'</code>, and
	* <code>valueContainsLiteralCharacters</code> is
	* true <code>stringToValue</code> will return
	* <code>'(415) 555-1212'</code>. On the other hand, if
	* <code>valueContainsLiteralCharacters</code> is false,
	* <code>stringToValue</code> will return <code>'4155551212'</code>.
	*
	* @param containsLiteralChars Used to indicate if literal characters in
	*        mask should be returned in stringToValue
	*/
	@:overload @:public public function setValueContainsLiteralCharacters(containsLiteralChars : Bool) : Void;
	
	/**
	* Returns true if <code>stringToValue</code> should return literal
	* characters in the mask.
	*
	* @return True if literal characters in mask should be returned in
	*         stringToValue
	*/
	@:overload @:public public function getValueContainsLiteralCharacters() : Bool;
	
	/**
	* Parses the text, returning the appropriate Object representation of
	* the String <code>value</code>. This strips the literal characters as
	* necessary and invokes supers <code>stringToValue</code>, so that if
	* you have specified a value class (<code>setValueClass</code>) an
	* instance of it will be created. This will throw a
	* <code>ParseException</code> if the value does not match the current
	* mask.  Refer to {@link #setValueContainsLiteralCharacters} for details
	* on how literals are treated.
	*
	* @throws ParseException if there is an error in the conversion
	* @param value String to convert
	* @see #setValueContainsLiteralCharacters
	* @return Object representation of text
	*/
	@:overload @:public override public function stringToValue(value : String) : Dynamic;
	
	/**
	* Returns a String representation of the Object <code>value</code>
	* based on the mask.  Refer to
	* {@link #setValueContainsLiteralCharacters} for details
	* on how literals are treated.
	*
	* @throws ParseException if there is an error in the conversion
	* @param value Value to convert
	* @see #setValueContainsLiteralCharacters
	* @return String representation of value
	*/
	@:overload @:public override public function valueToString(value : Dynamic) : String;
	
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
	@:overload @:public override public function install(ftf : javax.swing.JFormattedTextField) : Void;
	
	
}
@:native('javax$swing$text$MaskFormatter$MaskCharacter') @:internal extern class MaskFormatter_MaskCharacter
{
	/**
	* Subclasses should override this returning true if the instance
	* represents a literal character. The default implementation
	* returns false.
	*/
	@:overload @:public public function isLiteral() : Bool;
	
	/**
	* Returns true if <code>aChar</code> is a valid reprensentation of
	* the receiver. The default implementation returns true if the
	* receiver represents a literal character and <code>getChar</code>
	* == aChar. Otherwise, this will return true is <code>aChar</code>
	* is contained in the valid characters and not contained
	* in the invalid characters.
	*/
	@:overload @:public public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns the character to insert for <code>aChar</code>. The
	* default implementation returns <code>aChar</code>. Subclasses
	* that wish to do some sort of mapping, perhaps lower case to upper
	* case should override this and do the necessary mapping.
	*/
	@:overload @:public public function getChar(aChar : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Appends the necessary character in <code>formatting</code> at
	* <code>index</code> to <code>buff</code>.
	*/
	@:overload @:public public function append(buff : java.lang.StringBuilder, formatting : String, index : java.NativeArray<Int>, placeholder : String) : Void;
	
	
}
/**
* Used to represent a fixed character in the mask.
*/
@:native('javax$swing$text$MaskFormatter$LiteralCharacter') @:internal extern class MaskFormatter_LiteralCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public public function new(fixedChar : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function isLiteral() : Bool;
	
	@:overload @:public override public function getChar(aChar : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	
}
/**
* Represents a number, uses <code>Character.isDigit</code>.
*/
@:native('javax$swing$text$MaskFormatter$DigitMaskCharacter') @:internal extern class MaskFormatter_DigitMaskCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	
}
/**
* Represents a character, lower case letters are mapped to upper case
* using <code>Character.toUpperCase</code>.
*/
@:native('javax$swing$text$MaskFormatter$UpperCaseCharacter') @:internal extern class MaskFormatter_UpperCaseCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	@:overload @:public override public function getChar(aChar : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	
}
/**
* Represents a character, upper case letters are mapped to lower case
* using <code>Character.toLowerCase</code>.
*/
@:native('javax$swing$text$MaskFormatter$LowerCaseCharacter') @:internal extern class MaskFormatter_LowerCaseCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	@:overload @:public override public function getChar(aChar : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	
}
/**
* Represents either a character or digit, uses
* <code>Character.isLetterOrDigit</code>.
*/
@:native('javax$swing$text$MaskFormatter$AlphaNumericCharacter') @:internal extern class MaskFormatter_AlphaNumericCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	
}
/**
* Represents a letter, uses <code>Character.isLetter</code>.
*/
@:native('javax$swing$text$MaskFormatter$CharCharacter') @:internal extern class MaskFormatter_CharCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	
}
/**
* Represents a hex character, 0-9a-fA-F. a-f is mapped to A-F
*/
@:native('javax$swing$text$MaskFormatter$HexCharacter') @:internal extern class MaskFormatter_HexCharacter extends javax.swing.text.MaskFormatter.MaskFormatter_MaskCharacter
{
	@:overload @:public override public function isValidCharacter(aChar : java.StdTypes.Char16) : Bool;
	
	@:overload @:public override public function getChar(aChar : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	
}
