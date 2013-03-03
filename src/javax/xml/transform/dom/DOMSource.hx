package javax.xml.transform.dom;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class DOMSource implements javax.xml.transform.Source
{
	/** If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the Transformer supports Source input of this type.
	*/
	@:public @:static @:final public static var FEATURE(default, null) : String;
	
	/**
	* <p>Zero-argument default constructor.  If this constructor is used, and
	* no DOM source is set using {@link #setNode(Node node)} , then the
	* <code>Transformer</code> will
	* create an empty source {@link org.w3c.dom.Document} using
	* {@link javax.xml.parsers.DocumentBuilder#newDocument()}.</p>
	*
	* @see javax.xml.transform.Transformer#transform(Source xmlSource, Result outputTarget)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a new input source with a DOM node.  The operation
	* will be applied to the subtree rooted at this node.  In XSLT,
	* a "/" pattern still means the root of the tree (not the subtree),
	* and the evaluation of global variables and parameters is done
	* from the root node also.
	*
	* @param n The DOM node that will contain the Source tree.
	*/
	@:overload @:public public function new(n : org.w3c.dom.Node) : Void;
	
	/**
	* Create a new input source with a DOM node, and with the
	* system ID also passed in as the base URI.
	*
	* @param node The DOM node that will contain the Source tree.
	* @param systemID Specifies the base URI associated with node.
	*/
	@:overload @:public public function new(node : org.w3c.dom.Node, systemID : String) : Void;
	
	/**
	* Set the node that will represents a Source DOM tree.
	*
	* @param node The node that is to be transformed.
	*/
	@:overload @:public public function setNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* Get the node that represents a Source DOM tree.
	*
	* @return The node that is to be transformed.
	*/
	@:overload @:public public function getNode() : org.w3c.dom.Node;
	
	/**
	* Set the base ID (URL or system ID) from where URLs
	* will be resolved.
	*
	* @param systemID Base URL for this DOM tree.
	*/
	@:overload @:public public function setSystemId(systemID : String) : Void;
	
	/**
	* Get the base ID (URL or system ID) from where URLs
	* will be resolved.
	*
	* @return Base URL for this DOM tree.
	*/
	@:overload @:public public function getSystemId() : String;
	
	
}
