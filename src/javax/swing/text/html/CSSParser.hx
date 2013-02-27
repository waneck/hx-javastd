package javax.swing.text.html;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
* A CSS parser. This works by way of a delegate that implements the
* CSSParserCallback interface. The delegate is notified of the following
* events:
* <ul>
*   <li>Import statement: <code>handleImport</code>
*   <li>Selectors <code>handleSelector</code>. This is invoked for each
*       string. For example if the Reader contained p, bar , a {}, the delegate
*       would be notified 4 times, for 'p,' 'bar' ',' and 'a'.
*   <li>When a rule starts, <code>startRule</code>
*   <li>Properties in the rule via the <code>handleProperty</code>. This
*       is invoked one per property/value key, eg font size: foo;, would
*       cause the delegate to be notified once with a value of 'font size'.
*   <li>Values in the rule via the <code>handleValue</code>, this is notified
*       for the total value.
*   <li>When a rule ends, <code>endRule</code>
* </ul>
* This will parse much more than CSS 1, and loosely implements the
* recommendation for <i>Forward-compatible parsing</i> in section
* 7.1 of the CSS spec found at:
* <a href=http://www.w3.org/TR/REC-CSS1>http://www.w3.org/TR/REC-CSS1</a>.
* If an error results in parsing, a RuntimeException will be thrown.
* <p>
* This will preserve case. If the callback wishes to treat certain poritions
* case insensitively (such as selectors), it should use toLowerCase, or
* something similar.
*
* @author Scott Violet
*/
@:internal extern class CSSParser
{
	
}
@:native('javax$swing$text$html$CSSParser$CSSParserCallback') @:internal extern interface CSSParser_CSSParserCallback
{
	/** Called when an @import is encountered. */
	@:overload public function handleImport(importString : String) : Void;
	
	@:overload public function handleSelector(selector : String) : Void;
	
	@:overload public function startRule() : Void;
	
	@:overload public function handleProperty(property : String) : Void;
	
	@:overload public function handleValue(value : String) : Void;
	
	@:overload public function endRule() : Void;
	
	
}
