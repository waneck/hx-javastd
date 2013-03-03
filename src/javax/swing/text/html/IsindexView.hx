package javax.swing.text.html;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
* A view that supports the &lt;ISINDEX&lt; tag.  This is implemented
* as a JPanel that contains
*
* @author Sunita Mani
*/
@:internal extern class IsindexView extends javax.swing.text.ComponentView implements java.awt.event.ActionListener
{
	/**
	* Creates an IsindexView
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Creates the components necessary to to implement
	* this view.  The component returned is a <code>JPanel</code>,
	* that contains the PROMPT to the left and <code>JTextField</code>
	* to the right.
	*/
	@:overload @:public override public function createComponent() : java.awt.Component;
	
	/**
	* Responsible for processing the ActionEvent.
	* In this case this is hitting enter/return
	* in the text field.  This will construct the
	* URL from the base URL of the document.
	* To the URL is appended a '?' followed by the
	* contents of the JTextField.  The search
	* contents are URLEncoded.
	*/
	@:overload @:public public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
