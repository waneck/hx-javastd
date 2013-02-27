package java.awt.event;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyEvent extends java.awt.event.InputEvent
{
	/**
	* The first number in the range of ids used for key events.
	*/
	public static var KEY_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for key events.
	*/
	public static var KEY_LAST(default, null) : Int;
	
	/**
	* The "key typed" event.  This event is generated when a character is
	* entered.  In the simplest case, it is produced by a single key press.
	* Often, however, characters are produced by series of key presses, and
	* the mapping from key pressed events to key typed events may be
	* many-to-one or many-to-many.
	*/
	public static var KEY_TYPED(default, null) : Int;
	
	/**
	* The "key pressed" event. This event is generated when a key
	* is pushed down.
	*/
	public static var KEY_PRESSED(default, null) : Int;
	
	/**
	* The "key released" event. This event is generated when a key
	* is let up.
	*/
	public static var KEY_RELEASED(default, null) : Int;
	
	/* Virtual key codes. */
	public static var VK_ENTER(default, null) : Int;
	
	public static var VK_BACK_SPACE(default, null) : Int;
	
	public static var VK_TAB(default, null) : Int;
	
	public static var VK_CANCEL(default, null) : Int;
	
	public static var VK_CLEAR(default, null) : Int;
	
	public static var VK_SHIFT(default, null) : Int;
	
	public static var VK_CONTROL(default, null) : Int;
	
	public static var VK_ALT(default, null) : Int;
	
	public static var VK_PAUSE(default, null) : Int;
	
	public static var VK_CAPS_LOCK(default, null) : Int;
	
	public static var VK_ESCAPE(default, null) : Int;
	
	public static var VK_SPACE(default, null) : Int;
	
	public static var VK_PAGE_UP(default, null) : Int;
	
	public static var VK_PAGE_DOWN(default, null) : Int;
	
	public static var VK_END(default, null) : Int;
	
	public static var VK_HOME(default, null) : Int;
	
	/**
	* Constant for the non-numpad <b>left</b> arrow key.
	* @see #VK_KP_LEFT
	*/
	public static var VK_LEFT(default, null) : Int;
	
	/**
	* Constant for the non-numpad <b>up</b> arrow key.
	* @see #VK_KP_UP
	*/
	public static var VK_UP(default, null) : Int;
	
	/**
	* Constant for the non-numpad <b>right</b> arrow key.
	* @see #VK_KP_RIGHT
	*/
	public static var VK_RIGHT(default, null) : Int;
	
	/**
	* Constant for the non-numpad <b>down</b> arrow key.
	* @see #VK_KP_DOWN
	*/
	public static var VK_DOWN(default, null) : Int;
	
	/**
	* Constant for the comma key, ","
	*/
	public static var VK_COMMA(default, null) : Int;
	
	/**
	* Constant for the minus key, "-"
	* @since 1.2
	*/
	@:require(java2) public static var VK_MINUS(default, null) : Int;
	
	/**
	* Constant for the period key, "."
	*/
	public static var VK_PERIOD(default, null) : Int;
	
	/**
	* Constant for the forward slash key, "/"
	*/
	public static var VK_SLASH(default, null) : Int;
	
	/** VK_0 thru VK_9 are the same as ASCII '0' thru '9' (0x30 - 0x39) */
	public static var VK_0(default, null) : Int;
	
	public static var VK_1(default, null) : Int;
	
	public static var VK_2(default, null) : Int;
	
	public static var VK_3(default, null) : Int;
	
	public static var VK_4(default, null) : Int;
	
	public static var VK_5(default, null) : Int;
	
	public static var VK_6(default, null) : Int;
	
	public static var VK_7(default, null) : Int;
	
	public static var VK_8(default, null) : Int;
	
	public static var VK_9(default, null) : Int;
	
	/**
	* Constant for the semicolon key, ";"
	*/
	public static var VK_SEMICOLON(default, null) : Int;
	
	/**
	* Constant for the equals key, "="
	*/
	public static var VK_EQUALS(default, null) : Int;
	
	/** VK_A thru VK_Z are the same as ASCII 'A' thru 'Z' (0x41 - 0x5A) */
	public static var VK_A(default, null) : Int;
	
	public static var VK_B(default, null) : Int;
	
	public static var VK_C(default, null) : Int;
	
	public static var VK_D(default, null) : Int;
	
	public static var VK_E(default, null) : Int;
	
	public static var VK_F(default, null) : Int;
	
	public static var VK_G(default, null) : Int;
	
	public static var VK_H(default, null) : Int;
	
	public static var VK_I(default, null) : Int;
	
	public static var VK_J(default, null) : Int;
	
	public static var VK_K(default, null) : Int;
	
	public static var VK_L(default, null) : Int;
	
	public static var VK_M(default, null) : Int;
	
	public static var VK_N(default, null) : Int;
	
	public static var VK_O(default, null) : Int;
	
	public static var VK_P(default, null) : Int;
	
	public static var VK_Q(default, null) : Int;
	
	public static var VK_R(default, null) : Int;
	
	public static var VK_S(default, null) : Int;
	
	public static var VK_T(default, null) : Int;
	
	public static var VK_U(default, null) : Int;
	
	public static var VK_V(default, null) : Int;
	
	public static var VK_W(default, null) : Int;
	
	public static var VK_X(default, null) : Int;
	
	public static var VK_Y(default, null) : Int;
	
	public static var VK_Z(default, null) : Int;
	
	/**
	* Constant for the open bracket key, "["
	*/
	public static var VK_OPEN_BRACKET(default, null) : Int;
	
	/**
	* Constant for the back slash key, "\"
	*/
	public static var VK_BACK_SLASH(default, null) : Int;
	
	/**
	* Constant for the close bracket key, "]"
	*/
	public static var VK_CLOSE_BRACKET(default, null) : Int;
	
	public static var VK_NUMPAD0(default, null) : Int;
	
	public static var VK_NUMPAD1(default, null) : Int;
	
	public static var VK_NUMPAD2(default, null) : Int;
	
	public static var VK_NUMPAD3(default, null) : Int;
	
	public static var VK_NUMPAD4(default, null) : Int;
	
	public static var VK_NUMPAD5(default, null) : Int;
	
	public static var VK_NUMPAD6(default, null) : Int;
	
	public static var VK_NUMPAD7(default, null) : Int;
	
	public static var VK_NUMPAD8(default, null) : Int;
	
	public static var VK_NUMPAD9(default, null) : Int;
	
	public static var VK_MULTIPLY(default, null) : Int;
	
	public static var VK_ADD(default, null) : Int;
	
	/**
	* This constant is obsolete, and is included only for backwards
	* compatibility.
	* @see #VK_SEPARATOR
	*/
	public static var VK_SEPARATER(default, null) : Int;
	
	/**
	* Constant for the Numpad Separator key.
	* @since 1.4
	*/
	@:require(java4) public static var VK_SEPARATOR(default, null) : Int;
	
	public static var VK_SUBTRACT(default, null) : Int;
	
	public static var VK_DECIMAL(default, null) : Int;
	
	public static var VK_DIVIDE(default, null) : Int;
	
	public static var VK_DELETE(default, null) : Int;
	
	/* ASCII DEL */
	public static var VK_NUM_LOCK(default, null) : Int;
	
	public static var VK_SCROLL_LOCK(default, null) : Int;
	
	/** Constant for the F1 function key. */
	public static var VK_F1(default, null) : Int;
	
	/** Constant for the F2 function key. */
	public static var VK_F2(default, null) : Int;
	
	/** Constant for the F3 function key. */
	public static var VK_F3(default, null) : Int;
	
	/** Constant for the F4 function key. */
	public static var VK_F4(default, null) : Int;
	
	/** Constant for the F5 function key. */
	public static var VK_F5(default, null) : Int;
	
	/** Constant for the F6 function key. */
	public static var VK_F6(default, null) : Int;
	
	/** Constant for the F7 function key. */
	public static var VK_F7(default, null) : Int;
	
	/** Constant for the F8 function key. */
	public static var VK_F8(default, null) : Int;
	
	/** Constant for the F9 function key. */
	public static var VK_F9(default, null) : Int;
	
	/** Constant for the F10 function key. */
	public static var VK_F10(default, null) : Int;
	
	/** Constant for the F11 function key. */
	public static var VK_F11(default, null) : Int;
	
	/** Constant for the F12 function key. */
	public static var VK_F12(default, null) : Int;
	
	/* F13 - F24 are used on IBM 3270 keyboard; use random range for constants. */
	public static var VK_F13(default, null) : Int;
	
	/**
	* Constant for the F14 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F14(default, null) : Int;
	
	/**
	* Constant for the F15 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F15(default, null) : Int;
	
	/**
	* Constant for the F16 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F16(default, null) : Int;
	
	/**
	* Constant for the F17 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F17(default, null) : Int;
	
	/**
	* Constant for the F18 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F18(default, null) : Int;
	
	/**
	* Constant for the F19 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F19(default, null) : Int;
	
	/**
	* Constant for the F20 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F20(default, null) : Int;
	
	/**
	* Constant for the F21 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F21(default, null) : Int;
	
	/**
	* Constant for the F22 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F22(default, null) : Int;
	
	/**
	* Constant for the F23 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F23(default, null) : Int;
	
	/**
	* Constant for the F24 function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_F24(default, null) : Int;
	
	public static var VK_PRINTSCREEN(default, null) : Int;
	
	public static var VK_INSERT(default, null) : Int;
	
	public static var VK_HELP(default, null) : Int;
	
	public static var VK_META(default, null) : Int;
	
	public static var VK_BACK_QUOTE(default, null) : Int;
	
	public static var VK_QUOTE(default, null) : Int;
	
	/**
	* Constant for the numeric keypad <b>up</b> arrow key.
	* @see #VK_UP
	* @since 1.2
	*/
	@:require(java2) public static var VK_KP_UP(default, null) : Int;
	
	/**
	* Constant for the numeric keypad <b>down</b> arrow key.
	* @see #VK_DOWN
	* @since 1.2
	*/
	@:require(java2) public static var VK_KP_DOWN(default, null) : Int;
	
	/**
	* Constant for the numeric keypad <b>left</b> arrow key.
	* @see #VK_LEFT
	* @since 1.2
	*/
	@:require(java2) public static var VK_KP_LEFT(default, null) : Int;
	
	/**
	* Constant for the numeric keypad <b>right</b> arrow key.
	* @see #VK_RIGHT
	* @since 1.2
	*/
	@:require(java2) public static var VK_KP_RIGHT(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_GRAVE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_ACUTE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_CIRCUMFLEX(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_TILDE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_MACRON(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_BREVE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_ABOVEDOT(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_DIAERESIS(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_ABOVERING(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_DOUBLEACUTE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_CARON(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_CEDILLA(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_OGONEK(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_IOTA(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_VOICED_SOUND(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_DEAD_SEMIVOICED_SOUND(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_AMPERSAND(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_ASTERISK(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_QUOTEDBL(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_LESS(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_GREATER(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_BRACELEFT(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_BRACERIGHT(default, null) : Int;
	
	/**
	* Constant for the "@" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_AT(default, null) : Int;
	
	/**
	* Constant for the ":" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_COLON(default, null) : Int;
	
	/**
	* Constant for the "^" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_CIRCUMFLEX(default, null) : Int;
	
	/**
	* Constant for the "$" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_DOLLAR(default, null) : Int;
	
	/**
	* Constant for the Euro currency sign key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_EURO_SIGN(default, null) : Int;
	
	/**
	* Constant for the "!" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_EXCLAMATION_MARK(default, null) : Int;
	
	/**
	* Constant for the inverted exclamation mark key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_INVERTED_EXCLAMATION_MARK(default, null) : Int;
	
	/**
	* Constant for the "(" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_LEFT_PARENTHESIS(default, null) : Int;
	
	/**
	* Constant for the "#" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_NUMBER_SIGN(default, null) : Int;
	
	/**
	* Constant for the "+" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_PLUS(default, null) : Int;
	
	/**
	* Constant for the ")" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_RIGHT_PARENTHESIS(default, null) : Int;
	
	/**
	* Constant for the "_" key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_UNDERSCORE(default, null) : Int;
	
	/**
	* Constant for the Microsoft Windows "Windows" key.
	* It is used for both the left and right version of the key.
	* @see #getKeyLocation()
	* @since 1.5
	*/
	@:require(java5) public static var VK_WINDOWS(default, null) : Int;
	
	/**
	* Constant for the Microsoft Windows Context Menu key.
	* @since 1.5
	*/
	@:require(java5) public static var VK_CONTEXT_MENU(default, null) : Int;
	
	/* not clear what this means - listed in Microsoft Windows API */
	public static var VK_FINAL(default, null) : Int;
	
	/* Japanese PC 106 keyboard, Japanese Solaris keyboard: henkan */
	public static var VK_CONVERT(default, null) : Int;
	
	/* Japanese PC 106 keyboard: muhenkan */
	public static var VK_NONCONVERT(default, null) : Int;
	
	/* Japanese Solaris keyboard: kakutei */
	public static var VK_ACCEPT(default, null) : Int;
	
	/* not clear what this means - listed in Microsoft Windows API */
	public static var VK_MODECHANGE(default, null) : Int;
	
	/* replaced by VK_KANA_LOCK for Microsoft Windows and Solaris;
	might still be used on other platforms */
	public static var VK_KANA(default, null) : Int;
	
	/* replaced by VK_INPUT_METHOD_ON_OFF for Microsoft Windows and Solaris;
	might still be used for other platforms */
	public static var VK_KANJI(default, null) : Int;
	
	/* Japanese PC 106 keyboard: eisuu */
	public static var VK_ALPHANUMERIC(default, null) : Int;
	
	/* Japanese PC 106 keyboard: katakana */
	public static var VK_KATAKANA(default, null) : Int;
	
	/* Japanese PC 106 keyboard: hiragana */
	public static var VK_HIRAGANA(default, null) : Int;
	
	/* Japanese PC 106 keyboard: zenkaku */
	public static var VK_FULL_WIDTH(default, null) : Int;
	
	/* Japanese PC 106 keyboard: hankaku */
	public static var VK_HALF_WIDTH(default, null) : Int;
	
	/* Japanese PC 106 keyboard: roumaji */
	public static var VK_ROMAN_CHARACTERS(default, null) : Int;
	
	/* Japanese PC 106 keyboard - VK_CONVERT + ALT: zenkouho */
	public static var VK_ALL_CANDIDATES(default, null) : Int;
	
	/* Japanese PC 106 keyboard - VK_CONVERT + SHIFT: maekouho */
	public static var VK_PREVIOUS_CANDIDATE(default, null) : Int;
	
	/* Japanese PC 106 keyboard - VK_ALPHANUMERIC + ALT: kanji bangou */
	public static var VK_CODE_INPUT(default, null) : Int;
	
	/* Japanese Macintosh keyboard - VK_JAPANESE_HIRAGANA + SHIFT */
	public static var VK_JAPANESE_KATAKANA(default, null) : Int;
	
	/* Japanese Macintosh keyboard */
	public static var VK_JAPANESE_HIRAGANA(default, null) : Int;
	
	/* Japanese Macintosh keyboard */
	public static var VK_JAPANESE_ROMAN(default, null) : Int;
	
	/* Japanese PC 106 keyboard with special Windows driver - eisuu + Control; Japanese Solaris keyboard: kana */
	public static var VK_KANA_LOCK(default, null) : Int;
	
	/* Japanese PC 106 keyboard: kanji. Japanese Solaris keyboard: nihongo */
	public static var VK_INPUT_METHOD_ON_OFF(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_CUT(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_COPY(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_PASTE(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_UNDO(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_AGAIN(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_FIND(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_PROPS(default, null) : Int;
	
	/** @since 1.2 */
	@:require(java2) public static var VK_STOP(default, null) : Int;
	
	/**
	* Constant for the Compose function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_COMPOSE(default, null) : Int;
	
	/**
	* Constant for the AltGraph function key.
	* @since 1.2
	*/
	@:require(java2) public static var VK_ALT_GRAPH(default, null) : Int;
	
	/**
	* Constant for the Begin key.
	* @since 1.5
	*/
	@:require(java5) public static var VK_BEGIN(default, null) : Int;
	
	/**
	* This value is used to indicate that the keyCode is unknown.
	* KEY_TYPED events do not have a keyCode value; this value
	* is used instead.
	*/
	public static var VK_UNDEFINED(default, null) : Int;
	
	/**
	* KEY_PRESSED and KEY_RELEASED events which do not map to a
	* valid Unicode character use this for the keyChar value.
	*/
	public static var CHAR_UNDEFINED(default, null) : java.StdTypes.Char16;
	
	/**
	* A constant indicating that the keyLocation is indeterminate
	* or not relevant.
	* <code>KEY_TYPED</code> events do not have a keyLocation; this value
	* is used instead.
	* @since 1.4
	*/
	@:require(java4) public static var KEY_LOCATION_UNKNOWN(default, null) : Int;
	
	/**
	* A constant indicating that the key pressed or released
	* is not distinguished as the left or right version of a key,
	* and did not originate on the numeric keypad (or did not
	* originate with a virtual key corresponding to the numeric
	* keypad).
	* @since 1.4
	*/
	@:require(java4) public static var KEY_LOCATION_STANDARD(default, null) : Int;
	
	/**
	* A constant indicating that the key pressed or released is in
	* the left key location (there is more than one possible location
	* for this key).  Example: the left shift key.
	* @since 1.4
	*/
	@:require(java4) public static var KEY_LOCATION_LEFT(default, null) : Int;
	
	/**
	* A constant indicating that the key pressed or released is in
	* the right key location (there is more than one possible location
	* for this key).  Example: the right shift key.
	* @since 1.4
	*/
	@:require(java4) public static var KEY_LOCATION_RIGHT(default, null) : Int;
	
	/**
	* A constant indicating that the key event originated on the
	* numeric keypad or with a virtual key corresponding to the
	* numeric keypad.
	* @since 1.4
	*/
	@:require(java4) public static var KEY_LOCATION_NUMPAD(default, null) : Int;
	
	/**
	* Constructs a <code>KeyEvent</code> object.
	* <p>This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Component</code> that originated the event
	* @param id              An integer indicating the type of event.
	*                  For information on allowable values, see
	*                  the class description for {@link KeyEvent}
	* @param when      A long integer that specifies the time the event
	*                  occurred.
	*                     Passing negative or zero value
	*                     is not recommended
	* @param modifiers The modifier keys down during event (shift, ctrl,
	*                  alt, meta).
	*                     Passing negative value
	*                     is not recommended.
	*                     Zero value means that no modifiers were passed.
	*                  Use either an extended _DOWN_MASK or old _MASK modifiers,
	*                  however do not mix models in the one event.
	*                  The extended modifiers are preferred for using
	* @param keyCode   The integer code for an actual key, or VK_UNDEFINED
	*                  (for a key-typed event)
	* @param keyChar   The Unicode character generated by this event, or
	*                  CHAR_UNDEFINED (for key-pressed and key-released
	*                  events which do not map to a valid Unicode character)
	* @param keyLocation  Identifies the key location.  The only legal
	*        values are <code>KEY_LOCATION_UNKNOWN</code>,
	*        <code>KEY_LOCATION_STANDARD</code>, <code>KEY_LOCATION_LEFT</code>,
	*        <code>KEY_LOCATION_RIGHT</code>, and <code>KEY_LOCATION_NUMPAD</code>.
	* @throws IllegalArgumentException
	*     if <code>id</code> is <code>KEY_TYPED</code> and
	*       <code>keyChar</code> is <code>CHAR_UNDEFINED</code>;
	*     or if <code>id</code> is <code>KEY_TYPED</code> and
	*       <code>keyCode</code> is not <code>VK_UNDEFINED</code>;
	*     or if <code>id</code> is <code>KEY_TYPED</code> and
	*       <code>keyLocation</code> is not <code>KEY_LOCATION_UNKNOWN</code>;
	*     or if <code>keyLocation</code> is not one of the legal
	*       values enumerated above.
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getWhen()
	* @see #getModifiers()
	* @see #getKeyCode()
	* @see #getKeyChar()
	* @see #getKeyLocation()
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, keyCode : Int, keyChar : java.StdTypes.Char16, keyLocation : Int) : Void;
	
	/**
	* Constructs a <code>KeyEvent</code> object.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source    The <code>Component</code> that originated the event
	* @param id              An integer indicating the type of event.
	*                  For information on allowable values, see
	*                  the class description for {@link KeyEvent}
	* @param when      A long integer that specifies the time the event
	*                  occurred.
	*                     Passing negative or zero value
	*                     is not recommended
	* @param modifiers The modifier keys down during event (shift, ctrl,
	*                  alt, meta).
	*                     Passing negative value
	*                     is not recommended.
	*                     Zero value means that no modifiers were passed.
	*                  Use either an extended _DOWN_MASK or old _MASK modifiers,
	*                  however do not mix models in the one event.
	*                  The extended modifiers are preferred for using
	* @param keyCode   The integer code for an actual key, or VK_UNDEFINED
	*                  (for a key-typed event)
	* @param keyChar   The Unicode character generated by this event, or
	*                  CHAR_UNDEFINED (for key-pressed and key-released
	*                  events which do not map to a valid Unicode character)
	* @throws IllegalArgumentException  if <code>id</code> is
	*     <code>KEY_TYPED</code> and <code>keyChar</code> is
	*     <code>CHAR_UNDEFINED</code>; or if <code>id</code> is
	*     <code>KEY_TYPED</code> and <code>keyCode</code> is not
	*     <code>VK_UNDEFINED</code>
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getWhen()
	* @see #getModifiers()
	* @see #getKeyCode()
	* @see #getKeyChar()
	*/
	@:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, keyCode : Int, keyChar : java.StdTypes.Char16) : Void;
	
	/**
	* @deprecated as of JDK1.1
	*/
	@:overload public function new(source : java.awt.Component, id : Int, when : haxe.Int64, modifiers : Int, keyCode : Int) : Void;
	
	/**
	* Returns the integer keyCode associated with the key in this event.
	*
	* @return the integer code for an actual key on the keyboard.
	*         (For <code>KEY_TYPED</code> events, the keyCode is
	*         <code>VK_UNDEFINED</code>.)
	*/
	@:overload public function getKeyCode() : Int;
	
	/**
	* Set the keyCode value to indicate a physical key.
	*
	* @param keyCode an integer corresponding to an actual key on the keyboard.
	*/
	@:overload public function setKeyCode(keyCode : Int) : Void;
	
	/**
	* Returns the character associated with the key in this event.
	* For example, the <code>KEY_TYPED</code> event for shift + "a"
	* returns the value for "A".
	* <p>
	* <code>KEY_PRESSED</code> and <code>KEY_RELEASED</code> events
	* are not intended for reporting of character input.  Therefore,
	* the values returned by this method are guaranteed to be
	* meaningful only for <code>KEY_TYPED</code> events.
	*
	* @return the Unicode character defined for this key event.
	*         If no valid Unicode character exists for this key event,
	*         <code>CHAR_UNDEFINED</code> is returned.
	*/
	@:overload public function getKeyChar() : java.StdTypes.Char16;
	
	/**
	* Set the keyChar value to indicate a logical character.
	*
	* @param keyChar a char corresponding to to the combination of keystrokes
	*                that make up this event.
	*/
	@:overload public function setKeyChar(keyChar : java.StdTypes.Char16) : Void;
	
	/**
	* Set the modifiers to indicate additional keys that were held down
	* (e.g. shift, ctrl, alt, meta) defined as part of InputEvent.
	* <p>
	* NOTE:  use of this method is not recommended, because many AWT
	* implementations do not recognize modifier changes.  This is
	* especially true for <code>KEY_TYPED</code> events where the shift
	* modifier is changed.
	*
	* @param modifiers an integer combination of the modifier constants.
	* @see InputEvent
	* @deprecated as of JDK1.1.4
	*/
	@:overload public function setModifiers(modifiers : Int) : Void;
	
	/**
	* Returns the location of the key that originated this key event.
	*
	* Some keys occur more than once on a keyboard, e.g. the left and
	* right shift keys.  Additionally, some keys occur on the numeric
	* keypad.  This provides a way of distinguishing such keys.
	*
	* @return the location of the key that was pressed or released.
	*         Always returns <code>KEY_LOCATION_UNKNOWN</code> for
	*         <code>KEY_TYPED</code> events.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getKeyLocation() : Int;
	
	/**
	* Returns a String describing the keyCode, such as "HOME", "F1" or "A".
	* These strings can be localized by changing the awt.properties file.
	*
	* @return a string containing a text description for a physical key,
	*         identified by its keyCode
	*/
	@:overload public static function getKeyText(keyCode : Int) : String;
	
	/**
	* Returns a <code>String</code> describing the modifier key(s),
	* such as "Shift", or "Ctrl+Shift".  These strings can be
	* localized by changing the <code>awt.properties</code> file.
	* <p>
	* Note that <code>InputEvent.ALT_MASK</code> and
	* <code>InputEvent.BUTTON2_MASK</code> have the same value,
	* so the string "Alt" is returned for both modifiers.  Likewise,
	* <code>InputEvent.META_MASK</code> and
	* <code>InputEvent.BUTTON3_MASK</code> have the same value,
	* so the string "Meta" is returned for both modifiers.
	*
	* @return string a text description of the combination of modifier
	*                keys that were held down during the event
	* @see InputEvent#getModifiersExText(int)
	*/
	@:overload public static function getKeyModifiersText(modifiers : Int) : String;
	
	/**
	* Returns whether the key in this event is an "action" key.
	* Typically an action key does not fire a unicode character and is
	* not a modifier key.
	*
	* @return <code>true</code> if the key is an "action" key,
	*         <code>false</code> otherwise
	*/
	@:overload public function isActionKey() : Bool;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload override public function paramString() : String;
	
	/**
	* Returns an extended key code for the event.
	* The extended key code is a unique id assigned to  a key on the keyboard
	* just like {@code keyCode}. However, unlike {@code keyCode}, this value depends on the
	* current keyboard layout. For instance, pressing the left topmost letter key
	* in a common English layout produces the same value as {@code keyCode}, {@code VK_Q}.
	* Pressing the same key in a regular Russian layout gives another code, unique for the
	* letter "Cyrillic I short".
	*
	* @since 1.7
	*
	*/
	@:require(java7) @:overload public function getExtendedKeyCode() : Int;
	
	/**
	* Returns an extended key code for a unicode character.
	*
	* @return for a unicode character with a corresponding {@code VK_} constant -- this
	*   {@code VK_} constant; for a character appearing on the primary
	*   level of a known keyboard layout -- a unique integer.
	*   If a character does not appear on the primary level of a known keyboard,
	*   {@code VK_UNDEFINED} is returned.
	*
	* @since 1.7
	*
	*/
	@:require(java7) @:overload public static function getExtendedKeyCodeForChar(c : Int) : Int;
	
	
}
