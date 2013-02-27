package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DOMHelper.java,v 1.2.4.1 2005/09/15 08:15:40 suresh_emailid Exp $
*/
extern class DOMHelper
{
	/**
	* DOM Level 1 did not have a standard mechanism for creating a new
	* Document object. This function provides a DOM-implementation-independent
	* abstraction for that for that concept. It's typically used when
	* outputting a new DOM as the result of an operation.
	* <p>
	* TODO: This isn't directly compatable with DOM Level 2.
	* The Level 2 createDocument call also creates the root
	* element, and thus requires that you know what that element will be
	* before creating the Document. We should think about whether we want
	* to change this code, and the callers, so we can use the DOM's own
	* method. (It's also possible that DOM Level 3 may relax this
	* sequence, but you may give up some intelligence in the DOM by
	* doing so; the intent was that knowing the document type and root
	* element might let the DOM automatically switch to a specialized
	* subclass for particular kinds of documents.)
	*
	* @param isSecureProcessing state of the secure processing feature.
	* @return The newly created DOM Document object, with no children, or
	* null if we can't find a DOM implementation that permits creating
	* new empty Documents.
	*/
	@:overload public static function createDocument(isSecureProcessing : Bool) : org.w3c.dom.Document;
	
	/**
	* DOM Level 1 did not have a standard mechanism for creating a new
	* Document object. This function provides a DOM-implementation-independent
	* abstraction for that for that concept. It's typically used when
	* outputting a new DOM as the result of an operation.
	*
	* @return The newly created DOM Document object, with no children, or
	* null if we can't find a DOM implementation that permits creating
	* new empty Documents.
	*/
	@:overload public static function createDocument() : org.w3c.dom.Document;
	
	/**
	* Tells, through the combination of the default-space attribute
	* on xsl:stylesheet, xsl:strip-space, xsl:preserve-space, and the
	* xml:space attribute, whether or not extra whitespace should be stripped
	* from the node.  Literal elements from template elements should
	* <em>not</em> be tested with this function.
	* @param textNode A text node from the source tree.
	* @return true if the text node should be stripped of extra whitespace.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage advanced
	*/
	@:overload public function shouldStripSourceNode(textNode : org.w3c.dom.Node) : Bool;
	
	/**
	* Supports the XPath function GenerateID by returning a unique
	* identifier string for any given DOM Node.
	* <p>
	* Warning: The base implementation uses the Node object's hashCode(),
	* which is NOT guaranteed to be unique. If that method hasn't been
	* overridden in this DOM ipmlementation, most Java implementions will
	* derive it from the object's address and should be OK... but if
	* your DOM uses a different definition of hashCode (eg hashing the
	* contents of the subtree), or if your DOM may have multiple objects
	* that represent a single Node in the data structure (eg via proxying),
	* you may need to find another way to assign a unique identifier.
	* <p>
	* Also, be aware that if nodes are destroyed and recreated, there is
	* an open issue regarding whether an ID may be reused. Currently
	* we're assuming that the input document is stable for the duration
	* of the XPath/XSLT operation, so this shouldn't arise in this context.
	* <p>
	* (DOM Level 3 is investigating providing a unique node "key", but
	* that won't help Level 1 and Level 2 implementations.)
	*
	* @param node whose identifier you want to obtain
	*
	* @return a string which should be different for every Node object.
	*/
	@:overload public function getUniqueID(node : org.w3c.dom.Node) : String;
	
	/**
	* Figure out whether node2 should be considered as being later
	* in the document than node1, in Document Order as defined
	* by the XPath model. This may not agree with the ordering defined
	* by other XML applications.
	* <p>
	* There are some cases where ordering isn't defined, and neither are
	* the results of this function -- though we'll generally return true.
	*
	* TODO: Make sure this does the right thing with attribute nodes!!!
	*
	* @param node1 DOM Node to perform position comparison on.
	* @param node2 DOM Node to perform position comparison on .
	*
	* @return false if node2 comes before node1, otherwise return true.
	* You can think of this as
	* <code>(node1.documentOrderPosition &lt;= node2.documentOrderPosition)</code>.
	*/
	@:overload public static function isNodeAfter(node1 : org.w3c.dom.Node, node2 : org.w3c.dom.Node) : Bool;
	
	/**
	* Use DTMNodeProxy to determine whether two nodes are the same.
	*
	* @param node1 The first DOM node to compare.
	* @param node2 The second DOM node to compare.
	* @return true if the two nodes are the same.
	*/
	@:overload public static function isNodeTheSame(node1 : org.w3c.dom.Node, node2 : org.w3c.dom.Node) : Bool;
	
	/**
	* Get the depth level of this node in the tree (equals 1 for
	* a parentless node).
	*
	* @param n Node to be examined.
	* @return the number of ancestors, plus one
	* @xsl.usage internal
	*/
	@:overload public function getLevel(n : org.w3c.dom.Node) : java.StdTypes.Int16;
	
	/**
	* Given an XML Namespace prefix and a context in which the prefix
	* is to be evaluated, return the Namespace Name this prefix was
	* bound to. Note that DOM Level 3 is expected to provide a version of
	* this which deals with the DOM's "early binding" behavior.
	*
	* Default handling:
	*
	* @param prefix String containing namespace prefix to be resolved,
	* without the ':' which separates it from the localname when used
	* in a Node Name. The empty sting signifies the default namespace
	* at this point in the document.
	* @param namespaceContext Element which provides context for resolution.
	* (We could extend this to work for other nodes by first seeking their
	* nearest Element ancestor.)
	*
	* @return a String containing the Namespace URI which this prefix
	* represents in the specified context.
	*/
	@:overload public function getNamespaceForPrefix(prefix : String, namespaceContext : org.w3c.dom.Element) : String;
	
	/** Object to put into the m_NSInfos table that tells that a node has not been
	*  processed, but has xmlns namespace decls.  */
	private static var m_NSInfoUnProcWithXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Object to put into the m_NSInfos table that tells that a node has not been
	*  processed, but has no xmlns namespace decls.  */
	private static var m_NSInfoUnProcWithoutXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Object to put into the m_NSInfos table that tells that a node has not been
	*  processed, and has no xmlns namespace decls, and has no ancestor decls.  */
	private static var m_NSInfoUnProcNoAncestorXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Object to put into the m_NSInfos table that tells that a node has been
	*  processed, and has xmlns namespace decls.  */
	private static var m_NSInfoNullWithXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Object to put into the m_NSInfos table that tells that a node has been
	*  processed, and has no xmlns namespace decls.  */
	private static var m_NSInfoNullWithoutXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Object to put into the m_NSInfos table that tells that a node has been
	*  processed, and has no xmlns namespace decls. and has no ancestor decls.  */
	private static var m_NSInfoNullNoAncestorXMLNS(default, null) : com.sun.org.apache.xml.internal.utils.NSInfo;
	
	/** Vector of node (odd indexes) and NSInfos (even indexes) that tell if
	*  the given node is a candidate for ancestor namespace processing.  */
	private var m_candidateNoAncestorXMLNS : java.util.Vector<Dynamic>;
	
	/**
	* Returns the namespace of the given node. Differs from simply getting
	* the node's prefix and using getNamespaceForPrefix in that it attempts
	* to cache some of the data in NSINFO objects, to avoid repeated lookup.
	* TODO: Should we consider moving that logic into getNamespaceForPrefix?
	*
	* @param n Node to be examined.
	*
	* @return String containing the Namespace Name (uri) for this node.
	* Note that this is undefined for any nodes other than Elements and
	* Attributes.
	*/
	@:overload public function getNamespaceOfNode(n : org.w3c.dom.Node) : String;
	
	/**
	* Returns the local name of the given node. If the node's name begins
	* with a namespace prefix, this is the part after the colon; otherwise
	* it's the full node name.
	*
	* @param n the node to be examined.
	*
	* @return String containing the Local Name
	*/
	@:overload public function getLocalNameOfNode(n : org.w3c.dom.Node) : String;
	
	/**
	* Returns the element name with the namespace prefix (if any) replaced
	* by the Namespace URI it was bound to. This is not a standard
	* representation of a node name, but it allows convenient
	* single-string comparison of the "universal" names of two nodes.
	*
	* @param elem Element to be examined.
	*
	* @return String in the form "namespaceURI:localname" if the node
	* belongs to a namespace, or simply "localname" if it doesn't.
	* @see #getExpandedAttributeName
	*/
	@:overload public function getExpandedElementName(elem : org.w3c.dom.Element) : String;
	
	/**
	* Returns the attribute name with the namespace prefix (if any) replaced
	* by the Namespace URI it was bound to. This is not a standard
	* representation of a node name, but it allows convenient
	* single-string comparison of the "universal" names of two nodes.
	*
	* @param attr Attr to be examined
	*
	* @return String in the form "namespaceURI:localname" if the node
	* belongs to a namespace, or simply "localname" if it doesn't.
	* @see #getExpandedElementName
	*/
	@:overload public function getExpandedAttributeName(attr : org.w3c.dom.Attr) : String;
	
	/**
	* Tell if the node is ignorable whitespace. Note that this can
	* be determined only in the context of a DTD or other Schema,
	* and that DOM Level 2 has nostandardized DOM API which can
	* return that information.
	* @deprecated
	*
	* @param node Node to be examined
	*
	* @return CURRENTLY HARDCODED TO FALSE, but should return true if
	* and only if the node is of type Text, contains only whitespace,
	* and does not appear as part of the #PCDATA content of an element.
	* (Note that determining this last may require allowing for
	* Entity References.)
	*/
	@:overload public function isIgnorableWhitespace(node : org.w3c.dom.Text) : Bool;
	
	/**
	* Get the first unparented node in the ancestor chain.
	* @deprecated
	*
	* @param node Starting node, to specify which chain to chase
	*
	* @return the topmost ancestor.
	*/
	@:overload public function getRoot(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Get the root node of the document tree, regardless of
	* whether or not the node passed in is a document node.
	* <p>
	* TODO: This doesn't handle DocumentFragments or "orphaned" subtrees
	* -- it's currently returning ownerDocument even when the tree is
	* not actually part of the main Document tree. We should either
	* rewrite the description to say that it finds the Document node,
	* or change the code to walk up the ancestor chain.

	*
	* @param n Node to be examined
	*
	* @return the Document node. Note that this is not the correct answer
	* if n was (or was a child of) a DocumentFragment or an orphaned node,
	* as can arise if the DOM has been edited rather than being generated
	* by a parser.
	*/
	@:overload public function getRootNode(n : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Test whether the given node is a namespace decl node. In DOM Level 2
	* this can be done in a namespace-aware manner, but in Level 1 DOMs
	* it has to be done by testing the node name.
	*
	* @param n Node to be examined.
	*
	* @return boolean -- true iff the node is an Attr whose name is
	* "xmlns" or has the "xmlns:" prefix.
	*/
	@:overload public function isNamespaceNode(n : org.w3c.dom.Node) : Bool;
	
	/**
	* Obtain the XPath-model parent of a DOM node -- ownerElement for Attrs,
	* parent for other nodes.
	* <p>
	* Background: The DOM believes that you must be your Parent's
	* Child, and thus Attrs don't have parents. XPath said that Attrs
	* do have their owning Element as their parent. This function
	* bridges the difference, either by using the DOM Level 2 ownerElement
	* function or by using a "silly and expensive function" in Level 1
	* DOMs.
	* <p>
	* (There's some discussion of future DOMs generalizing ownerElement
	* into ownerNode and making it work on all types of nodes. This
	* still wouldn't help the users of Level 1 or Level 2 DOMs)
	* <p>
	*
	* @param node Node whose XPath parent we want to obtain
	*
	* @return the parent of the node, or the ownerElement if it's an
	* Attr node, or null if the node is an orphan.
	*
	* @throws RuntimeException if the Document has no root element.
	* This can't arise if the Document was created
	* via the DOM Level 2 factory methods, but is possible if other
	* mechanisms were used to obtain it
	*/
	@:overload public static function getParentOfNode(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Given an ID, return the element. This can work only if the document
	* is interpreted in the context of a DTD or Schema, since otherwise
	* we don't know which attributes are or aren't IDs.
	* <p>
	* Note that DOM Level 1 had no ability to retrieve this information.
	* DOM Level 2 introduced it but does not promise that it will be
	* supported in all DOMs; those which can't support it will always
	* return null.
	* <p>
	* TODO: getElementByID is currently unimplemented. Support DOM Level 2?
	*
	* @param id The unique identifier to be searched for.
	* @param doc The document to search within.
	* @return CURRENTLY HARDCODED TO NULL, but it should be:
	* The node which has this unique identifier, or null if there
	* is no such node or this DOM can't reliably recognize it.
	*/
	@:overload public function getElementByID(id : String, doc : org.w3c.dom.Document) : org.w3c.dom.Element;
	
	/**
	* The getUnparsedEntityURI function returns the URI of the unparsed
	* entity with the specified name in the same document as the context
	* node (see [3.3 Unparsed Entities]). It returns the empty string if
	* there is no such entity.
	* <p>
	* XML processors may choose to use the System Identifier (if one
	* is provided) to resolve the entity, rather than the URI in the
	* Public Identifier. The details are dependent on the processor, and
	* we would have to support some form of plug-in resolver to handle
	* this properly. Currently, we simply return the System Identifier if
	* present, and hope that it a usable URI or that our caller can
	* map it to one.
	* TODO: Resolve Public Identifiers... or consider changing function name.
	* <p>
	* If we find a relative URI
	* reference, XML expects it to be resolved in terms of the base URI
	* of the document. The DOM doesn't do that for us, and it isn't
	* entirely clear whether that should be done here; currently that's
	* pushed up to a higher levelof our application. (Note that DOM Level
	* 1 didn't store the document's base URI.)
	* TODO: Consider resolving Relative URIs.
	* <p>
	* (The DOM's statement that "An XML processor may choose to
	* completely expand entities before the structure model is passed
	* to the DOM" refers only to parsed entities, not unparsed, and hence
	* doesn't affect this function.)
	*
	* @param name A string containing the Entity Name of the unparsed
	* entity.
	* @param doc Document node for the document to be searched.
	*
	* @return String containing the URI of the Unparsed Entity, or an
	* empty string if no such entity exists.
	*/
	@:overload public function getUnparsedEntityURI(name : String, doc : org.w3c.dom.Document) : String;
	
	/**
	* The factory object used for creating nodes
	* in the result tree.
	*/
	private var m_DOMFactory : org.w3c.dom.Document;
	
	/**
	* Store the factory object required to create DOM nodes
	* in the result tree. In fact, that's just the result tree's
	* Document node...
	*
	* @param domFactory The DOM Document Node within whose context
	* the result tree will be built.
	*/
	@:overload public function setDOMFactory(domFactory : org.w3c.dom.Document) : Void;
	
	/**
	* Retrieve the factory object required to create DOM nodes
	* in the result tree.
	*
	* @return The result tree's DOM Document Node.
	*/
	@:overload public function getDOMFactory() : org.w3c.dom.Document;
	
	/**
	* Get the textual contents of the node. See
	* getNodeData(Node,FastStringBuffer) for discussion of how
	* whitespace nodes are handled.
	*
	* @param node DOM Node to be examined
	* @return String containing a concatenation of all the
	* textual content within that node.
	* @see #getNodeData(Node,FastStringBuffer)
	*
	*/
	@:overload public static function getNodeData(node : org.w3c.dom.Node) : String;
	
	/**
	* Retrieve the text content of a DOM subtree, appending it into a
	* user-supplied FastStringBuffer object. Note that attributes are
	* not considered part of the content of an element.
	* <p>
	* There are open questions regarding whitespace stripping.
	* Currently we make no special effort in that regard, since the standard
	* DOM doesn't yet provide DTD-based information to distinguish
	* whitespace-in-element-context from genuine #PCDATA. Note that we
	* should probably also consider xml:space if/when we address this.
	* DOM Level 3 may solve the problem for us.
	*
	* @param node Node whose subtree is to be walked, gathering the
	* contents of all Text or CDATASection nodes.
	* @param buf FastStringBuffer into which the contents of the text
	* nodes are to be concatenated.
	*/
	@:overload public static function getNodeData(node : org.w3c.dom.Node, buf : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	
}
