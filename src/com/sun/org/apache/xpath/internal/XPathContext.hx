package com.sun.org.apache.xpath.internal;
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
* $Id: XPathContext.java,v 1.2.4.2 2005/09/15 01:37:55 jeffsuttor Exp $
*/
extern class XPathContext extends com.sun.org.apache.xml.internal.dtm.DTMManager
{
	/**
	* Though XPathContext context extends
	* the DTMManager, it really is a proxy for this object, which
	* is the real DTMManager.
	*/
	private var m_dtmManager : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Return the DTMManager object.  Though XPathContext context extends
	* the DTMManager, it really is a proxy for the real DTMManager.  If a
	* caller needs to make a lot of calls to the DTMManager, it is faster
	* if it gets the real one from this function.
	*/
	@:overload public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Set the state of the secure processing feature
	*/
	@:overload public function setSecureProcessing(flag : Bool) : Void;
	
	/**
	* Return the state of the secure processing feature
	*/
	@:overload public function isSecureProcessing() : Bool;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	* (I think more parameters will need to be added for error handling, and entity
	* resolution).
	*
	* @param source the specification of the source object, which may be null,
	*               in which case it is assumed that node construction will take
	*               by some other means.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param wsfilter Enables filtering of whitespace nodes, and may be null.
	* @param incremental true if the construction should try and be incremental.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	*
	* @return a non-null DTM reference.
	*/
	@:overload override public function getDTM(source : javax.xml.transform.Source, unique : Bool, wsfilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get an instance of a DTM that "owns" a node handle.
	*
	* @param nodeHandle the nodeHandle.
	*
	* @return a non-null DTM reference.
	*/
	@:overload override public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Given a W3C DOM node, try and return a DTM handle.
	* Note: calling this may be non-optimal.
	*
	* @param node Non-null reference to a DOM node.
	*
	* @return a valid DTM handle.
	*/
	@:overload override public function getDTMHandleFromNode(node : org.w3c.dom.Node) : Int;
	
	/**
	* %TBD% Doc
	*/
	@:overload override public function getDTMIdentity(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Int;
	
	/**
	* Creates an empty <code>DocumentFragment</code> object.
	* @return A new <code>DocumentFragment handle</code>.
	*/
	@:overload override public function createDocumentFragment() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Release a DTM either to a lru pool, or completely remove reference.
	* DTMs without system IDs are always hard deleted.
	* State: experimental.
	*
	* @param dtm The DTM to be released.
	* @param shouldHardDelete True if the DTM should be removed no matter what.
	* @return true if the DTM was removed, false if it was put back in a lru pool.
	*/
	@:overload override public function release(dtm : com.sun.org.apache.xml.internal.dtm.DTM, shouldHardDelete : Bool) : Bool;
	
	/**
	* Create a new <code>DTMIterator</code> based on an XPath
	* <a href="http://www.w3.org/TR/xpath#NT-LocationPath>LocationPath</a> or
	* a <a href="http://www.w3.org/TR/xpath#NT-UnionExpr">UnionExpr</a>.
	*
	* @param xpathCompiler ??? Somehow we need to pass in a subpart of the
	* expression.  I hate to do this with strings, since the larger expression
	* has already been parsed.
	*
	* @param pos The position in the expression.
	* @return The newly created <code>DTMIterator</code>.
	*/
	@:overload override public function createDTMIterator(xpathCompiler : Dynamic, pos : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create a new <code>DTMIterator</code> based on an XPath
	* <a href="http://www.w3.org/TR/xpath#NT-LocationPath>LocationPath</a> or
	* a <a href="http://www.w3.org/TR/xpath#NT-UnionExpr">UnionExpr</a>.
	*
	* @param xpathString Must be a valid string expressing a
	* <a href="http://www.w3.org/TR/xpath#NT-LocationPath>LocationPath</a> or
	* a <a href="http://www.w3.org/TR/xpath#NT-UnionExpr">UnionExpr</a>.
	*
	* @param presolver An object that can resolve prefixes to namespace URLs.
	*
	* @return The newly created <code>DTMIterator</code>.
	*/
	@:overload override public function createDTMIterator(xpathString : String, presolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create a new <code>DTMIterator</code> based only on a whatToShow and
	* a DTMFilter.  The traversal semantics are defined as the descendant
	* access.
	*
	* @param whatToShow This flag specifies which node types may appear in
	*   the logical view of the tree presented by the iterator. See the
	*   description of <code>NodeFilter</code> for the set of possible
	*   <code>SHOW_</code> values.These flags can be combined using
	*   <code>OR</code>.
	* @param filter The <code>NodeFilter</code> to be used with this
	*   <code>TreeWalker</code>, or <code>null</code> to indicate no filter.
	* @param entityReferenceExpansion The value of this flag determines
	*   whether entity reference nodes are expanded.
	*
	* @return The newly created <code>NodeIterator</code>.
	*/
	@:overload override public function createDTMIterator(whatToShow : Int, filter : com.sun.org.apache.xml.internal.dtm.DTMFilter, entityReferenceExpansion : Bool) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create a new <code>DTMIterator</code> that holds exactly one node.
	*
	* @param node The node handle that the DTMIterator will iterate to.
	*
	* @return The newly created <code>DTMIterator</code>.
	*/
	@:overload override public function createDTMIterator(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create an XPathContext instance.
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(useServicesMechanism : Bool) : Void;
	
	/**
	**This constructor doesn't seem to be used anywhere -- huizhe wang**
	* Create an XPathContext instance.
	* @param owner Value that can be retrieved via the getOwnerObject() method.
	* @see #getOwnerObject
	*/
	@:overload public function new(owner : Dynamic) : Void;
	
	/**
	* Reset for new run.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the current locater in the stylesheet.
	*
	* @param location The location within the stylesheet.
	*/
	@:overload public function setSAXLocator(location : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Set the current locater in the stylesheet.
	*
	* @param location The location within the stylesheet.
	*/
	@:overload public function pushSAXLocator(location : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Push a slot on the locations stack so that setSAXLocator can be
	* repeatedly called.
	*
	*/
	@:overload public function pushSAXLocatorNull() : Void;
	
	/**
	* Pop the current locater.
	*/
	@:overload public function popSAXLocator() : Void;
	
	/**
	* Get the current locater in the stylesheet.
	*
	* @return The location within the stylesheet, or null if not known.
	*/
	@:overload public function getSAXLocator() : javax.xml.transform.SourceLocator;
	
	/**
	* Get the "owner" context of this context, which should be,
	* in the case of XSLT, the Transformer object.  This is needed
	* so that XSLT functions can get the Transformer.
	* @return The owner object passed into the constructor, or null.
	*/
	@:overload public function getOwnerObject() : Dynamic;
	
	/**
	* Get the variable stack, which is in charge of variables and
	* parameters.
	*
	* @return the variable stack, which should not be null.
	*/
	@:overload @:final public function getVarStack() : com.sun.org.apache.xpath.internal.VariableStack;
	
	/**
	* Get the variable stack, which is in charge of variables and
	* parameters.
	*
	* @param varStack non-null reference to the variable stack.
	*/
	@:overload @:final public function setVarStack(varStack : com.sun.org.apache.xpath.internal.VariableStack) : Void;
	
	/**
	* Get the SourceTreeManager associated with this execution context.
	*
	* @return the SourceTreeManager associated with this execution context.
	*/
	@:overload @:final public function getSourceTreeManager() : com.sun.org.apache.xpath.internal.SourceTreeManager;
	
	/**
	* Set the SourceTreeManager associated with this execution context.
	*
	* @param mgr the SourceTreeManager to be associated with this
	*        execution context.
	*/
	@:overload public function setSourceTreeManager(mgr : com.sun.org.apache.xpath.internal.SourceTreeManager) : Void;
	
	/**
	* Get the ErrorListener where errors and warnings are to be reported.
	*
	* @return A non-null ErrorListener reference.
	*/
	@:overload @:final public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* Set the ErrorListener where errors and warnings are to be reported.
	*
	* @param listener A non-null ErrorListener reference.
	*/
	@:overload public function setErrorListener(listener : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* Get the URIResolver associated with this execution context.
	*
	* @return a URI resolver, which may be null.
	*/
	@:overload @:final public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* Set the URIResolver associated with this execution context.
	*
	* @param resolver the URIResolver to be associated with this
	*        execution context, may be null to clear an already set resolver.
	*/
	@:overload public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/** The reader of the primary source tree.    */
	public var m_primaryReader : org.xml.sax.XMLReader;
	
	/**
	* Get primary XMLReader associated with this execution context.
	*
	* @return The reader of the primary source tree.
	*/
	@:overload @:final public function getPrimaryReader() : org.xml.sax.XMLReader;
	
	/**
	* Set primary XMLReader associated with this execution context.
	*
	* @param reader The reader of the primary source tree.
	*/
	@:overload public function setPrimaryReader(reader : org.xml.sax.XMLReader) : Void;
	
	@:overload public function getContextNodeListsStack() : java.util.Stack<Dynamic>;
	
	@:overload public function setContextNodeListsStack(s : java.util.Stack<Dynamic>) : Void;
	
	/**
	* Get the current context node list.
	*
	* @return  the <a href="http://www.w3.org/TR/xslt#dt-current-node-list">current node list</a>,
	* also refered to here as a <term>context node list</term>.
	*/
	@:overload @:final public function getContextNodeList() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Set the current context node list.
	*
	* @param nl the <a href="http://www.w3.org/TR/xslt#dt-current-node-list">current node list</a>,
	* also refered to here as a <term>context node list</term>.
	* @xsl.usage internal
	*/
	@:overload @:final public function pushContextNodeList(nl : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Pop the current context node list.
	* @xsl.usage internal
	*/
	@:overload @:final public function popContextNodeList() : Void;
	
	/**
	* The ammount to use for stacks that record information during the
	* recursive execution.
	*/
	public static var RECURSIONLIMIT(default, null) : Int;
	
	@:overload public function getCurrentNodeStack() : com.sun.org.apache.xml.internal.utils.IntStack;
	
	@:overload public function setCurrentNodeStack(nv : com.sun.org.apache.xml.internal.utils.IntStack) : Void;
	
	/**
	* Get the current context node.
	*
	* @return the <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>.
	*/
	@:overload @:final public function getCurrentNode() : Int;
	
	/**
	* Set the current context node and expression node.
	*
	* @param cn the <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>.
	* @param en the sub-expression context node.
	*/
	@:overload @:final public function pushCurrentNodeAndExpression(cn : Int, en : Int) : Void;
	
	/**
	* Set the current context node.
	*/
	@:overload @:final public function popCurrentNodeAndExpression() : Void;
	
	/**
	* Push the current context node, expression node, and prefix resolver.
	*
	* @param cn the <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>.
	* @param en the sub-expression context node.
	* @param nc the namespace context (prefix resolver.
	*/
	@:overload @:final public function pushExpressionState(cn : Int, en : Int, nc : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Pop the current context node, expression node, and prefix resolver.
	*/
	@:overload @:final public function popExpressionState() : Void;
	
	/**
	* Set the current context node.
	*
	* @param n the <a href="http://www.w3.org/TR/xslt#dt-current-node">current node</a>.
	*/
	@:overload @:final public function pushCurrentNode(n : Int) : Void;
	
	/**
	* Pop the current context node.
	*/
	@:overload @:final public function popCurrentNode() : Void;
	
	/**
	* Set the current predicate root.
	*/
	@:overload @:final public function pushPredicateRoot(n : Int) : Void;
	
	/**
	* Pop the current predicate root.
	*/
	@:overload @:final public function popPredicateRoot() : Void;
	
	/**
	* Get the current predicate root.
	*/
	@:overload @:final public function getPredicateRoot() : Int;
	
	/**
	* Set the current location path iterator root.
	*/
	@:overload @:final public function pushIteratorRoot(n : Int) : Void;
	
	/**
	* Pop the current location path iterator root.
	*/
	@:overload @:final public function popIteratorRoot() : Void;
	
	/**
	* Get the current location path iterator root.
	*/
	@:overload @:final public function getIteratorRoot() : Int;
	
	@:overload public function getCurrentExpressionNodeStack() : com.sun.org.apache.xml.internal.utils.IntStack;
	
	@:overload public function setCurrentExpressionNodeStack(nv : com.sun.org.apache.xml.internal.utils.IntStack) : Void;
	
	@:overload @:final public function getPredicatePos() : Int;
	
	@:overload @:final public function pushPredicatePos(n : Int) : Void;
	
	@:overload @:final public function popPredicatePos() : Void;
	
	/**
	* Get the current node that is the expression's context (i.e. for current() support).
	*
	* @return The current sub-expression node.
	*/
	@:overload @:final public function getCurrentExpressionNode() : Int;
	
	/**
	* Set the current node that is the expression's context (i.e. for current() support).
	*
	* @param n The sub-expression node to be current.
	*/
	@:overload @:final public function pushCurrentExpressionNode(n : Int) : Void;
	
	/**
	* Pop the current node that is the expression's context
	* (i.e. for current() support).
	*/
	@:overload @:final public function popCurrentExpressionNode() : Void;
	
	/**
	* Get the current namespace context for the xpath.
	*
	* @return the current prefix resolver for resolving prefixes to
	*         namespace URLs.
	*/
	@:overload @:final public function getNamespaceContext() : com.sun.org.apache.xml.internal.utils.PrefixResolver;
	
	/**
	* Get the current namespace context for the xpath.
	*
	* @param pr the prefix resolver to be used for resolving prefixes to
	*         namespace URLs.
	*/
	@:overload @:final public function setNamespaceContext(pr : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Push a current namespace context for the xpath.
	*
	* @param pr the prefix resolver to be used for resolving prefixes to
	*         namespace URLs.
	*/
	@:overload @:final public function pushNamespaceContext(pr : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Just increment the namespace contest stack, so that setNamespaceContext
	* can be used on the slot.
	*/
	@:overload @:final public function pushNamespaceContextNull() : Void;
	
	/**
	* Pop the current namespace context for the xpath.
	*/
	@:overload @:final public function popNamespaceContext() : Void;
	
	@:overload public function getAxesIteratorStackStacks() : java.util.Stack<Dynamic>;
	
	@:overload public function setAxesIteratorStackStacks(s : java.util.Stack<Dynamic>) : Void;
	
	/**
	* Push a TreeWalker on the stack.
	*
	* @param iter A sub-context AxesWalker.
	* @xsl.usage internal
	*/
	@:overload @:final public function pushSubContextList(iter : com.sun.org.apache.xpath.internal.axes.SubContextList) : Void;
	
	/**
	* Pop the last pushed axes iterator.
	* @xsl.usage internal
	*/
	@:overload @:final public function popSubContextList() : Void;
	
	/**
	* Get the current axes iterator, or return null if none.
	*
	* @return the sub-context node list.
	* @xsl.usage internal
	*/
	@:overload public function getSubContextList() : com.sun.org.apache.xpath.internal.axes.SubContextList;
	
	/**
	* Get the <a href="http://www.w3.org/TR/xslt#dt-current-node-list">current node list</a>
	* as defined by the XSLT spec.
	*
	* @return the <a href="http://www.w3.org/TR/xslt#dt-current-node-list">current node list</a>.
	* @xsl.usage internal
	*/
	@:overload public function getCurrentNodeList() : com.sun.org.apache.xpath.internal.axes.SubContextList;
	
	/**
	* Get the current context node.
	* @return The current context node.
	*/
	@:overload @:final public function getContextNode() : Int;
	
	/**
	* Get the current context node list.
	* @return An iterator for the current context list, as
	* defined in XSLT.
	*/
	@:overload @:final public function getContextNodes() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* The the expression context for extensions for this context.
	*
	* @return An object that implements the ExpressionContext.
	*/
	@:overload public function getExpressionContext() : com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
	
	/**
	* Get a DTM to be used as a container for a global Result Tree
	* Fragment. This will always be an instance of (derived from? equivalent to?)
	* SAX2DTM, since each RTF is constructed by temporarily redirecting our SAX
	* output to it. It may be a single DTM containing for multiple fragments,
	* if the implementation supports that.
	*
	* Note: The distinction between this method and getRTFDTM() is that the latter
	* allocates space from the dynamic variable stack (m_rtfdtm_stack), which may
	* be pruned away again as the templates which defined those variables are exited.
	* Global variables may be bound late (see XUnresolvedVariable), and never want to
	* be discarded, hence we need to allocate them separately and don't actually need
	* a stack to track them.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getGlobalRTFDTM() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get a DTM to be used as a container for a dynamic Result Tree
	* Fragment. This will always be an instance of (derived from? equivalent to?)
	* SAX2DTM, since each RTF is constructed by temporarily redirecting our SAX
	* output to it. It may be a single DTM containing for multiple fragments,
	* if the implementation supports that.
	*
	* @return a non-null DTM reference.
	*/
	@:overload public function getRTFDTM() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/** Push the RTFDTM's context mark, to allows discarding RTFs added after this
	* point. (If it doesn't exist we don't push, since we might still be able to
	* get away with not creating it. That requires that excessive pops be harmless.)
	* */
	@:overload public function pushRTFContext() : Void;
	
	/** Pop the RTFDTM's context mark. This discards any RTFs added after the last
	* mark was set.
	*
	* If there is no RTF DTM, there's nothing to pop so this
	* becomes a no-op. If pushes were issued before this was called, we count on
	* the fact that popRewindMark is defined such that overpopping just resets
	* to empty.
	*
	* Complicating factor: We need to handle the case of popping back to a previous
	* RTF DTM, if one of the weird produce-an-RTF-to-build-an-RTF cases arose.
	* Basically: If pop says this DTM is now empty, then return to the previous
	* if one exists, in whatever state we left it in. UGLY, but hopefully the
	* situation which forces us to consider this will arise exceedingly rarely.
	* */
	@:overload public function popRTFContext() : Void;
	
	/**
	* Gets DTMXRTreeFrag object if one has already been created.
	* Creates new DTMXRTreeFrag object and adds to m_DTMXRTreeFrags  HashMap,
	* otherwise.
	* @param dtmIdentity
	* @return DTMXRTreeFrag
	*/
	@:overload public function getDTMXRTreeFrag(dtmIdentity : Int) : com.sun.org.apache.xpath.internal.objects.DTMXRTreeFrag;
	
	
}
@:native('com$sun$org$apache$xpath$internal$XPathContext$XPathExpressionContext') extern class XPathContext_XPathExpressionContext implements com.sun.org.apache.xalan.internal.extensions.ExpressionContext
{
	/**
	* Return the XPathContext associated with this XPathExpressionContext.
	* Extensions should use this judiciously and only when special processing
	* requirements cannot be met another way.  Consider requesting an enhancement
	* to the ExpressionContext interface to avoid having to call this method.
	* @return the XPathContext associated with this XPathExpressionContext.
	*/
	@:overload public function getXPathContext() : com.sun.org.apache.xpath.internal.XPathContext;
	
	/**
	* Return the DTMManager object.  Though XPathContext context extends
	* the DTMManager, it really is a proxy for the real DTMManager.  If a
	* caller needs to make a lot of calls to the DTMManager, it is faster
	* if it gets the real one from this function.
	*/
	@:overload public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Get the current context node.
	* @return The current context node.
	*/
	@:overload public function getContextNode() : org.w3c.dom.Node;
	
	/**
	* Get the current context node list.
	* @return An iterator for the current context list, as
	* defined in XSLT.
	*/
	@:overload public function getContextNodes() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Get the error listener.
	* @return The registered error listener.
	*/
	@:overload public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload public function setServicesMechnism(flag : Bool) : Void;
	
	/**
	* Get the value of a node as a number.
	* @param n Node to be converted to a number.  May be null.
	* @return value of n as a number.
	*/
	@:overload public function toNumber(n : org.w3c.dom.Node) : Float;
	
	/**
	* Get the value of a node as a string.
	* @param n Node to be converted to a string.  May be null.
	* @return value of n as a string, or an empty string if n is null.
	*/
	@:overload public function toString(n : org.w3c.dom.Node) : String;
	
	/**
	* Get a variable based on it's qualified name.
	* @param qname The qualified name of the variable.
	* @return The evaluated value of the variable.
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:final public function getVariableOrParam(qname : com.sun.org.apache.xml.internal.utils.QName) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}
