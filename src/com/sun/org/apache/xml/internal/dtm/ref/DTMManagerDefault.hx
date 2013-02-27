package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: DTMManagerDefault.java,v 1.2.4.1 2005/09/15 08:15:02 suresh_emailid Exp $
*/
extern class DTMManagerDefault extends com.sun.org.apache.xml.internal.dtm.DTMManager
{
	/**
	* Map from DTM identifier numbers to DTM objects that this manager manages.
	* One DTM may have several prefix numbers, if extended node indexing
	* is in use; in that case, m_dtm_offsets[] will used to control which
	* prefix maps to which section of the DTM.
	*
	* This array grows as necessary; see addDTM().
	*
	* This array grows as necessary; see addDTM(). Growth is uncommon... but
	* access needs to be blindingly fast since it's used in node addressing.
	*/
	private var m_dtms : java.NativeArray<com.sun.org.apache.xml.internal.dtm.DTM>;
	
	/**
	* The cache for XMLReader objects to be used if the user did not
	* supply an XMLReader for a SAXSource or supplied a StreamSource.
	*/
	private var m_readerManager : com.sun.org.apache.xml.internal.utils.XMLReaderManager;
	
	/**
	* The default implementation of ContentHandler, DTDHandler and ErrorHandler.
	*/
	private var m_defaultHandler : org.xml.sax.helpers.DefaultHandler;
	
	/**
	* Add a DTM to the DTM table. This convenience call adds it as the
	* "base DTM ID", with offset 0. The other version of addDTM should
	* be used if you want to add "extended" DTM IDs with nonzero offsets.
	*
	* @param dtm Should be a valid reference to a DTM.
	* @param id Integer DTM ID to be bound to this DTM
	*/
	@:overload @:synchronized public function addDTM(dtm : com.sun.org.apache.xml.internal.dtm.DTM, id : Int) : Void;
	
	/**
	* Add a DTM to the DTM table.
	*
	* @param dtm Should be a valid reference to a DTM.
	* @param id Integer DTM ID to be bound to this DTM.
	* @param offset Integer addressing offset. The internal DTM Node ID is
	* obtained by adding this offset to the node-number field of the
	* public DTM Handle. For the first DTM ID accessing each DTM, this is 0;
	* for overflow addressing it will be a multiple of 1<<IDENT_DTM_NODE_BITS.
	*/
	@:overload @:synchronized public function addDTM(dtm : com.sun.org.apache.xml.internal.dtm.DTM, id : Int, offset : Int) : Void;
	
	/**
	* Get the first free DTM ID available. %OPT% Linear search is inefficient!
	*/
	@:overload @:synchronized public function getFirstFreeDTMID() : Int;
	
	/**
	* Constructor DTMManagerDefault
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Get an instance of a DTM, loaded with the content from the
	* specified source.  If the unique flag is true, a new instance will
	* always be returned.  Otherwise it is up to the DTMManager to return a
	* new instance or an instance that it already created and may be being used
	* by someone else.
	*
	* A bit of magic in this implementation: If the source is null, unique is true,
	* and incremental and doIndexing are both false, we return an instance of
	* SAX2RTFDTM, which see.
	*
	* (I think more parameters will need to be added for error handling, and entity
	* resolution, and more explicit control of the RTF situation).
	*
	* @param source the specification of the source object.
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
	@:overload @:synchronized override public function getDTM(source : javax.xml.transform.Source, unique : Bool, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, incremental : Bool, doIndexing : Bool) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Given a W3C DOM node, try and return a DTM handle.
	* Note: calling this may be non-optimal, and there is no guarantee that
	* the node will be found in any particular DTM.
	*
	* @param node Non-null reference to a DOM node.
	*
	* @return a valid DTM handle.
	*/
	@:overload @:synchronized override public function getDTMHandleFromNode(node : org.w3c.dom.Node) : Int;
	
	/**
	* This method returns the SAX2 parser to use with the InputSource
	* obtained from this URI.
	* It may return null if any SAX2-conformant XML parser can be used,
	* or if getInputSource() will also return null. The parser must
	* be free for use (i.e., not currently in use for another parse().
	* After use of the parser is completed, the releaseXMLReader(XMLReader)
	* must be called.
	*
	* @param inputSource The value returned from the URIResolver.
	* @return  a SAX2 XMLReader to use to resolve the inputSource argument.
	*
	* @return non-null XMLReader reference ready to parse.
	*/
	@:overload @:synchronized public function getXMLReader(inputSource : javax.xml.transform.Source) : org.xml.sax.XMLReader;
	
	/**
	* Indicates that the XMLReader object is no longer in use for the transform.
	*
	* Note that the getXMLReader method may return an XMLReader that was
	* specified on the SAXSource object by the application code.  Such a
	* reader should still be passed to releaseXMLReader, but the reader manager
	* will only re-use XMLReaders that it created.
	*
	* @param reader The XMLReader to be released.
	*/
	@:overload @:synchronized public function releaseXMLReader(reader : org.xml.sax.XMLReader) : Void;
	
	/**
	* Return the DTM object containing a representation of this node.
	*
	* @param nodeHandle DTM Handle indicating which node to retrieve
	*
	* @return a reference to the DTM object containing this node.
	*/
	@:overload @:synchronized override public function getDTM(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Given a DTM, find the ID number in the DTM tables which addresses
	* the start of the document. If overflow addressing is in use, other
	* DTM IDs may also be assigned to this DTM.
	*
	* @param dtm The DTM which (hopefully) contains this node.
	*
	* @return The DTM ID (as the high bits of a NodeHandle, not as our
	* internal index), or -1 if the DTM doesn't belong to this manager.
	*/
	@:overload @:synchronized override public function getDTMIdentity(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Int;
	
	/**
	* Release the DTMManager's reference(s) to a DTM, making it unmanaged.
	* This is typically done as part of returning the DTM to the heap after
	* we're done with it.
	*
	* @param dtm the DTM to be released.
	*
	* @param shouldHardDelete If false, this call is a suggestion rather than an
	* order, and we may not actually release the DTM. This is intended to
	* support intelligent caching of documents... which is not implemented
	* in this version of the DTM manager.
	*
	* @return true if the DTM was released, false if shouldHardDelete was set
	* and we decided not to.
	*/
	@:overload @:synchronized override public function release(dtm : com.sun.org.apache.xml.internal.dtm.DTM, shouldHardDelete : Bool) : Bool;
	
	/**
	* Method createDocumentFragment
	*
	*
	* NEEDSDOC (createDocumentFragment) @return
	*/
	@:overload @:synchronized override public function createDocumentFragment() : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* NEEDSDOC Method createDTMIterator
	*
	*
	* NEEDSDOC @param whatToShow
	* NEEDSDOC @param filter
	* NEEDSDOC @param entityReferenceExpansion
	*
	* NEEDSDOC (createDTMIterator) @return
	*/
	@:overload @:synchronized override public function createDTMIterator(whatToShow : Int, filter : com.sun.org.apache.xml.internal.dtm.DTMFilter, entityReferenceExpansion : Bool) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* NEEDSDOC Method createDTMIterator
	*
	*
	* NEEDSDOC @param xpathString
	* NEEDSDOC @param presolver
	*
	* NEEDSDOC (createDTMIterator) @return
	*/
	@:overload @:synchronized override public function createDTMIterator(xpathString : String, presolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* NEEDSDOC Method createDTMIterator
	*
	*
	* NEEDSDOC @param node
	*
	* NEEDSDOC (createDTMIterator) @return
	*/
	@:overload @:synchronized override public function createDTMIterator(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* NEEDSDOC Method createDTMIterator
	*
	*
	* NEEDSDOC @param xpathCompiler
	* NEEDSDOC @param pos
	*
	* NEEDSDOC (createDTMIterator) @return
	*/
	@:overload @:synchronized override public function createDTMIterator(xpathCompiler : Dynamic, pos : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* return the expanded name table.
	*
	* NEEDSDOC @param dtm
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload public function getExpandedNameTable(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable;
	
	
}
