package com.sun.org.apache.xml.internal.dtm;
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
* $Id: DTMManager.java,v 1.2.4.1 2005/09/15 08:14:54 suresh_emailid Exp $
*/
extern class DTMManager
{
	/**
	* Factory for creating XMLString objects.
	*  %TBD% Make this set by the caller.
	*/
	@:protected private var m_xsf : com.sun.org.apache.xml.internal.utils.XMLStringFactory;
	
	/**
	* Default constructor is protected on purpose.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Get the XMLStringFactory used for the DTMs.
	*
	*
	* @return a valid XMLStringFactory object, or null if it hasn't been set yet.
	*/
	@:overload @:public public function getXMLStringFactory() : com.sun.org.apache.xml.internal.utils.XMLStringFactory;
	
	/**
	* Set the XMLStringFactory used for the DTMs.
	*
	*
	* @param xsf a valid XMLStringFactory object, should not be null.
	*/
	@:overload @:public public function setXMLStringFactory(xsf : com.sun.org.apache.xml.internal.utils.XMLStringFactory) : Void;
	
	/**
	* Obtain a new instance of a <code>DTMManager</code>.
	* This static method creates a new factory instance
	* This method uses the following ordered lookup procedure to determine
	* the <code>DTMManager</code> implementation class to
	* load:
	* <ul>
	* <li>
	* Use the <code>com.sun.org.apache.xml.internal.dtm.DTMManager</code> system
	* property.
	* </li>
	* <li>
	* Use the JAVA_HOME(the parent directory where jdk is
	* installed)/lib/xalan.properties for a property file that contains the
	* name of the implementation class keyed on the same value as the
	* system property defined above.
	* </li>
	* <li>
	* Use the Services API (as detailed in the JAR specification), if
	* available, to determine the classname. The Services API will look
	* for a classname in the file
	* <code>META-INF/services/com.sun.org.apache.xml.internal.dtm.DTMManager</code>
	* in jars available to the runtime.
	* </li>
	* <li>
	* Use the default <code>DTMManager</code> classname, which is
	* <code>com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault</code>.
	* </li>
	* </ul>
	*
	* Once an application has obtained a reference to a <code>
	* DTMManager</code> it can use the factory to configure
	* and obtain parser instances.
	*
	* @return new DTMManager instance, never null.
	*
	* @throws DTMConfigurationException
	* if the implementation is not available or cannot be instantiated.
	*/
	@:overload @:public @:static public static function newInstance(xsf : com.sun.org.apache.xml.internal.utils.XMLStringFactory) : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	@:overload @:public @:static public static function newInstance(xsf : com.sun.org.apache.xml.internal.utils.XMLStringFactory, useServicesMechanism : Bool) : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	*
	* (More parameters may eventually need to be added for error handling
	* and entity resolution, and to better control selection of implementations.)
	*
	* @param source the specification of the source object, which may be null,
	*               in which case it is assumed that node construction will take
	*               by some other means.
	* @param unique true if the returned DTM must be unique, probably because it
	* is going to be mutated.
	* @param whiteSpaceFilter Enables filtering of whitespace nodes, and may
	*                         be null.
	* @param incremental true if the DTM should be built incrementally, if
	*                    possible.
	* @param doIndexing true if the caller considers it worth it to use
	*                   indexing schemes.
	*
	* @return a non-null DTM reference.
	*/
	@:overload @:public @:abstract public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Get the instance of DTM that "owns" a node handle.
	*
	* @param nodeHandle the nodeHandle.
	*
	* @return a non-null DTM reference.
	*/
	@:overload @:public @:abstract public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Given a W3C DOM node, try and return a DTM handle.
	* Note: calling this may be non-optimal.
	*
	* @param node Non-null reference to a DOM node.
	*
	* @return a valid DTM handle.
	*/
	@:overload @:public @:abstract public function getDTMHandleFromNode(node : org.w3c.dom.Node) : Int;
	
	/**
	* Creates a DTM representing an empty <code>DocumentFragment</code> object.
	* @return a non-null DTM reference.
	*/
	@:overload @:public @:abstract public function createDocumentFragment() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Release a DTM either to a lru pool, or completely remove reference.
	* DTMs without system IDs are always hard deleted.
	* State: experimental.
	*
	* @param dtm The DTM to be released.
	* @param shouldHardDelete True if the DTM should be removed no matter what.
	* @return true if the DTM was removed, false if it was put back in a lru pool.
	*/
	@:overload @:public @:abstract public function release(dtm : com.sun.org.apache.xml.internal.dtm.DTM, shouldHardDelete : Bool) : Bool;
	
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
	@:overload @:public @:abstract public function createDTMIterator(xpathCompiler : Dynamic, pos : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
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
	@:overload @:public @:abstract public function createDTMIterator(xpathString : String, presolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create a new <code>DTMIterator</code> based only on a whatToShow
	* and a DTMFilter.  The traversal semantics are defined as the
	* descendant access.
	* <p>
	* Note that DTMIterators may not be an exact match to DOM
	* NodeIterators. They are initialized and used in much the same way
	* as a NodeIterator, but their response to document mutation is not
	* currently defined.
	*
	* @param whatToShow This flag specifies which node types may appear in
	*   the logical view of the tree presented by the iterator. See the
	*   description of <code>NodeFilter</code> for the set of possible
	*   <code>SHOW_</code> values.These flags can be combined using
	*   <code>OR</code>.
	* @param filter The <code>NodeFilter</code> to be used with this
	*   <code>DTMFilter</code>, or <code>null</code> to indicate no filter.
	* @param entityReferenceExpansion The value of this flag determines
	*   whether entity reference nodes are expanded.
	*
	* @return The newly created <code>DTMIterator</code>.
	*/
	@:overload @:public @:abstract public function createDTMIterator(whatToShow : Int, filter : com.sun.org.apache.xml.internal.dtm.DTMFilter, entityReferenceExpansion : Bool) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Create a new <code>DTMIterator</code> that holds exactly one node.
	*
	* @param node The node handle that the DTMIterator will iterate to.
	*
	* @return The newly created <code>DTMIterator</code>.
	*/
	@:overload @:public @:abstract public function createDTMIterator(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/* Flag indicating whether an incremental transform is desired */
	@:public public var m_incremental : Bool;
	
	/*
	* Flag set by FEATURE_SOURCE_LOCATION.
	* This feature specifies whether the transformation phase should
	* keep track of line and column numbers for the input source
	* document.
	*/
	@:public public var m_source_location : Bool;
	
	/**
	* Get a flag indicating whether an incremental transform is desired
	* @return incremental boolean.
	*
	*/
	@:overload @:public public function getIncremental() : Bool;
	
	/**
	* Set a flag indicating whether an incremental transform is desired
	* This flag should have the same value as the FEATURE_INCREMENTAL feature
	* which is set by the TransformerFactory.setAttribut() method before a
	* DTMManager is created
	* @param incremental boolean to use to set m_incremental.
	*
	*/
	@:overload @:public public function setIncremental(incremental : Bool) : Void;
	
	/**
	* Get a flag indicating whether the transformation phase should
	* keep track of line and column numbers for the input source
	* document.
	* @return source location boolean
	*
	*/
	@:overload @:public public function getSource_location() : Bool;
	
	/**
	* Set a flag indicating whether the transformation phase should
	* keep track of line and column numbers for the input source
	* document.
	* This flag should have the same value as the FEATURE_SOURCE_LOCATION feature
	* which is set by the TransformerFactory.setAttribut() method before a
	* DTMManager is created
	* @param sourceLocation boolean to use to set m_source_location
	*/
	@:overload @:public public function setSource_location(sourceLocation : Bool) : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload @:public public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload @:public public function setServicesMechnism(flag : Bool) : Void;
	
	/** This value, set at compile time, controls how many bits of the
	* DTM node identifier numbers are used to identify a node within a
	* document, and thus sets the maximum number of nodes per
	* document. The remaining bits are used to identify the DTM
	* document which contains this node.
	*
	* If you change IDENT_DTM_NODE_BITS, be sure to rebuild _ALL_ the
	* files which use it... including the IDKey testcases.
	*
	* (FuncGenerateKey currently uses the node identifier directly and
	* thus is affected when this changes. The IDKEY results will still be
	* _correct_ (presuming no other breakage), but simple equality
	* comparison against the previous "golden" files will probably
	* complain.)
	* */
	@:public @:static @:final public static var IDENT_DTM_NODE_BITS(default, null) : Int;
	
	/** When this bitmask is ANDed with a DTM node handle number, the result
	* is the low bits of the node's index number within that DTM. To obtain
	* the high bits, add the DTM ID portion's offset as assigned in the DTM
	* Manager.
	*/
	@:public @:static @:final public static var IDENT_NODE_DEFAULT(default, null) : Int;
	
	/** When this bitmask is ANDed with a DTM node handle number, the result
	* is the DTM's document identity number.
	*/
	@:public @:static @:final public static var IDENT_DTM_DEFAULT(default, null) : Int;
	
	/** This is the maximum number of DTMs available.  The highest DTM is
	* one less than this.
	*/
	@:public @:static @:final public static var IDENT_MAX_DTMS(default, null) : Int;
	
	/**
	* %TBD% Doc
	*
	* NEEDSDOC @param dtm
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public @:abstract public function getDTMIdentity(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Int;
	
	/**
	* %TBD% Doc
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getDTMIdentityMask() : Int;
	
	/**
	* %TBD% Doc
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload @:public public function getNodeIdentityMask() : Int;
	
	
}
/**
* A configuration error.
* Originally in ObjectFactory. This is the only portion used in this package
*/
@:native('com$sun$org$apache$xml$internal$dtm$DTMManager$ConfigurationError') @:internal extern class DTMManager_ConfigurationError extends java.lang.Error
{
	
}
