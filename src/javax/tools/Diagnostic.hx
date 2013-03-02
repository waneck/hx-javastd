package javax.tools;
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
extern interface Diagnostic<S>
{
	/**
	* Gets the kind of this diagnostic, for example, error or
	* warning.
	* @return the kind of this diagnostic
	*/
	@:overload public function getKind() : javax.tools.Diagnostic.Diagnostic_Kind;
	
	/**
	* Gets the source object associated with this diagnostic.
	*
	* @return the source object associated with this diagnostic.
	* {@code null} if no source object is associated with the
	* diagnostic.
	*/
	@:overload public function getSource() : S;
	
	/**
	* Gets a character offset from the beginning of the source object
	* associated with this diagnostic that indicates the location of
	* the problem.  In addition, the following must be true:
	*
	* <p>{@code getStartPostion() <= getPosition()}
	* <p>{@code getPosition() <= getEndPosition()}
	*
	* @return character offset from beginning of source; {@link
	* #NOPOS} if {@link #getSource()} would return {@code null} or if
	* no location is suitable
	*/
	@:overload public function getPosition() : haxe.Int64;
	
	/**
	* Gets the character offset from the beginning of the file
	* associated with this diagnostic that indicates the start of the
	* problem.
	*
	* @return offset from beginning of file; {@link #NOPOS} if and
	* only if {@link #getPosition()} returns {@link #NOPOS}
	*/
	@:overload public function getStartPosition() : haxe.Int64;
	
	/**
	* Gets the character offset from the beginning of the file
	* associated with this diagnostic that indicates the end of the
	* problem.
	*
	* @return offset from beginning of file; {@link #NOPOS} if and
	* only if {@link #getPosition()} returns {@link #NOPOS}
	*/
	@:overload public function getEndPosition() : haxe.Int64;
	
	/**
	* Gets the line number of the character offset returned by
	* {@linkplain #getPosition()}.
	*
	* @return a line number or {@link #NOPOS} if and only if {@link
	* #getPosition()} returns {@link #NOPOS}
	*/
	@:overload public function getLineNumber() : haxe.Int64;
	
	/**
	* Gets the column number of the character offset returned by
	* {@linkplain #getPosition()}.
	*
	* @return a column number or {@link #NOPOS} if and only if {@link
	* #getPosition()} returns {@link #NOPOS}
	*/
	@:overload public function getColumnNumber() : haxe.Int64;
	
	/**
	* Gets a diagnostic code indicating the type of diagnostic.  The
	* code is implementation-dependent and might be {@code null}.
	*
	* @return a diagnostic code
	*/
	@:overload public function getCode() : String;
	
	/**
	* Gets a localized message for the given locale.  The actual
	* message is implementation-dependent.  If the locale is {@code
	* null} use the default locale.
	*
	* @param locale a locale; might be {@code null}
	* @return a localized message
	*/
	@:overload public function getMessage(locale : java.util.Locale) : String;
	
	
}
/**
* Kinds of diagnostics, for example, error or warning.
*/
@:native('javax$tools$Diagnostic$Kind') extern enum Diagnostic_Kind
{
	/**
	* Problem which prevents the tool's normal completion.
	*/
	ERROR;
	/**
	* Problem which does not usually prevent the tool from
	* completing normally.
	*/
	WARNING;
	/**
	* Problem similar to a warning, but is mandated by the tool's
	* specification.  For example, the Java&trade; Language
	* Specification, 3rd Ed. mandates warnings on certain
	* unchecked operations and the use of deprecated methods.
	*/
	MANDATORY_WARNING;
	/**
	* Informative message from the tool.
	*/
	NOTE;
	/**
	* Diagnostic which does not fit within the other kinds.
	*/
	OTHER;
	
}

