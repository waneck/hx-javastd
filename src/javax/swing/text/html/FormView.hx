package javax.swing.text.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Component decorator that implements the view interface
* for form elements, &lt;input&gt;, &lt;textarea&gt;,
* and &lt;select&gt;.  The model for the component is stored
* as an attribute of the the element (using StyleConstants.ModelAttribute),
* and is used to build the component of the view.  The type
* of the model is assumed to of the type that would be set by
* <code>HTMLDocument.HTMLReader.FormAction</code>.  If there are
* multiple views mapped over the document, they will share the
* embedded component models.
* <p>
* The following table shows what components get built
* by this view.
* <table summary="shows what components get built by this view">
* <tr>
*   <th>Element Type</th>
*   <th>Component built</th>
* </tr>
* <tr>
*   <td>input, type button</td>
*   <td>JButton</td>
* </tr>
* <tr>
*   <td>input, type checkbox</td>
*   <td>JCheckBox</td>
* </tr>
* <tr>
*   <td>input, type image</td>
*   <td>JButton</td>
* </tr>
* <tr>
*   <td>input, type password</td>
*   <td>JPasswordField</td>
* </tr>
* <tr>
*   <td>input, type radio</td>
*   <td>JRadioButton</td>
* </tr>
* <tr>
*   <td>input, type reset</td>
*   <td>JButton</td>
* </tr>
* <tr>
*   <td>input, type submit</td>
*   <td>JButton</td>
* </tr>
* <tr>
*   <td>input, type text</td>
*   <td>JTextField</td>
* </tr>
* <tr>
*   <td>select, size &gt; 1 or multiple attribute defined</td>
*   <td>JList in a JScrollPane</td>
* </tr>
* <tr>
*   <td>select, size unspecified or 1</td>
*   <td>JComboBox</td>
* </tr>
* <tr>
*   <td>textarea</td>
*   <td>JTextArea in a JScrollPane</td>
* </tr>
* <tr>
*   <td>input, type file</td>
*   <td>JTextField</td>
* </tr>
* </table>
*
* @author Timothy Prinzing
* @author Sunita Mani
*/
extern class FormView extends javax.swing.text.ComponentView implements java.awt.event.ActionListener
{
	/**
	* If a value attribute is not specified for a FORM input element
	* of type "submit", then this default string is used.
	*
	* @deprecated As of 1.3, value now comes from UIManager property
	*             FormView.submitButtonText
	*/
	@:public @:static @:final public static var SUBMIT(default, null) : String;
	
	/**
	* If a value attribute is not specified for a FORM input element
	* of type "reset", then this default string is used.
	*
	* @deprecated As of 1.3, value comes from UIManager UIManager property
	*             FormView.resetButtonText
	*/
	@:public @:static @:final public static var RESET(default, null) : String;
	
	/**
	* Creates a new FormView object.
	*
	* @param elem the element to decorate
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Create the component.  This is basically a
	* big switch statement based upon the tag type
	* and html attributes of the associated element.
	*/
	@:overload @:protected override private function createComponent() : java.awt.Component;
	
	/**
	* Determines the maximum span for this view along an
	* axis. For certain components, the maximum and preferred span are the
	* same. For others this will return the value
	* returned by Component.getMaximumSize along the
	* axis of interest.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Responsible for processeing the ActionEvent.
	* If the element associated with the FormView,
	* has a type of "submit", "reset", "text" or "password"
	* then the action is processed.  In the case of a "submit"
	* the form is submitted.  In the case of a "reset"
	* the form is reset to its original state.
	* In the case of "text" or "password", if the
	* element is the last one of type "text" or "password",
	* the form is submitted.  Otherwise, focus is transferred
	* to the next component in the form.
	*
	* @param evt the ActionEvent.
	*/
	@:overload @:public public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	/**
	* This method is responsible for submitting the form data.
	* A thread is forked to undertake the submission.
	*/
	@:overload @:protected private function submitData(data : String) : Void;
	
	/**
	* This method is called to submit a form in response
	* to a click on an image -- an &lt;INPUT&gt; form
	* element of type "image".
	*
	* @param imageData the mouse click coordinates.
	*/
	@:overload @:protected private function imageSubmit(imageData : String) : Void;
	
	
}
/**
* MouseEventListener class to handle form submissions when
* an input with type equal to image is clicked on.
* A MouseListener is necessary since along with the image
* data the coordinates associated with the mouse click
* need to be submitted.
*/
@:native('javax$swing$text$html$FormView$MouseEventListener') extern class FormView_MouseEventListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mouseReleased(evt : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* BrowseFileAction is used for input type == file. When the user
* clicks the button a JFileChooser is brought up allowing the user
* to select a file in the file system. The resulting path to the selected
* file is set in the text field (actually an instance of Document).
*/
@:native('javax$swing$text$html$FormView$BrowseFileAction') @:internal extern class FormView_BrowseFileAction implements java.awt.event.ActionListener
{
	@:overload @:public public function actionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	
}
