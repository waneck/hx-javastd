package javax.swing.text.html;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* for &lt;object&gt; elements.
* <p>
* This view will try to load the class specified by the
* <code>classid</code> attribute.  If possible, the Classloader
* used to load the associated Document is used.
* This would typically be the same as the ClassLoader
* used to load the EditorKit.  If the document's
* ClassLoader is null, <code>Class.forName</code> is used.
* <p>
* If the class can successfully be loaded, an attempt will
* be made to create an instance of it by calling
* <code>Class.newInstance</code>.  An attempt will be made
* to narrow the instance to type <code>java.awt.Component</code>
* to display the object.
* <p>
* This view can also manage a set of parameters with limitations.
* The parameters to the &lt;object&gt; element are expected to
* be present on the associated elements attribute set as simple
* strings.  Each bean property will be queried as a key on
* the AttributeSet, with the expectation that a non-null value
* (of type String) will be present if there was a parameter
* specification for the property.  Reflection is used to
* set the parameter.  Currently, this is limited to a very
* simple single parameter of type String.
* <p>
* A simple example HTML invocation is:
* <pre>
*      &lt;object classid="javax.swing.JLabel"&gt;
*      &lt;param name="text" value="sample text"&gt;
*      &lt;/object&gt;
* </pre>
*
* @author Timothy Prinzing
*/
extern class ObjectView extends javax.swing.text.ComponentView
{
	/**
	* Creates a new ObjectView object.
	*
	* @param elem the element to decorate
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Create the component.  The classid is used
	* as a specification of the classname, which
	* we try to load.
	*/
	@:overload override private function createComponent() : java.awt.Component;
	
	
}
