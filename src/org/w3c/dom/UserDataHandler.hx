package org.w3c.dom;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2004 World Wide Web Consortium,
*
* (Massachusetts Institute of Technology, European Research Consortium for
* Informatics and Mathematics, Keio University). All Rights Reserved. This
* work is distributed under the W3C(r) Software License [1] in the hope that
* it will be useful, but WITHOUT ANY WARRANTY; without even the implied
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
/**
* When associating an object to a key on a node using
* <code>Node.setUserData()</code> the application can provide a handler
* that gets called when the node the object is associated to is being
* cloned, imported, or renamed. This can be used by the application to
* implement various behaviors regarding the data it associates to the DOM
* nodes. This interface defines that handler.
* <p>See also the <a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>Document Object Model (DOM) Level 3 Core Specification</a>.
* @since DOM Level 3
*/
extern interface UserDataHandler
{
	/**
	* This method is called whenever the node for which this handler is
	* registered is imported or cloned.
	* <br> DOM applications must not raise exceptions in a
	* <code>UserDataHandler</code>. The effect of throwing exceptions from
	* the handler is DOM implementation dependent.
	* @param operation Specifies the type of operation that is being
	*   performed on the node.
	* @param key Specifies the key for which this handler is being called.
	* @param data Specifies the data for which this handler is being called.
	* @param src Specifies the node being cloned, adopted, imported, or
	*   renamed. This is <code>null</code> when the node is being deleted.
	* @param dst Specifies the node newly created if any, or
	*   <code>null</code>.
	*/
	@:overload @:public public function handle(operation : java.StdTypes.Int16, key : String, data : Dynamic, src : org.w3c.dom.Node, dst : org.w3c.dom.Node) : Void;
	
	
}
