package javax.imageio.event;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface IIOReadProgressListener extends java.util.EventListener
{
	/**
	* Reports that a sequence of read operations is beginning.
	* <code>ImageReader</code> implementations are required to call
	* this method exactly once from their
	* <code>readAll(Iterator)</code> method.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	* @param minIndex the index of the first image to be read.
	*/
	@:overload public function sequenceStarted(source : javax.imageio.ImageReader, minIndex : Int) : Void;
	
	/**
	* Reports that a sequence of read operationshas completed.
	* <code>ImageReader</code> implementations are required to call
	* this method exactly once from their
	* <code>readAll(Iterator)</code> method.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	*/
	@:overload public function sequenceComplete(source : javax.imageio.ImageReader) : Void;
	
	/**
	* Reports that an image read operation is beginning.  All
	* <code>ImageReader</code> implementations are required to call
	* this method exactly once when beginning an image read
	* operation.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	* @param imageIndex the index of the image being read within its
	* containing input file or stream.
	*/
	@:overload public function imageStarted(source : javax.imageio.ImageReader, imageIndex : Int) : Void;
	
	/**
	* Reports the approximate degree of completion of the current
	* <code>read</code> call of the associated
	* <code>ImageReader</code>.
	*
	* <p> The degree of completion is expressed as a percentage
	* varying from <code>0.0F</code> to <code>100.0F</code>.  The
	* percentage should ideally be calculated in terms of the
	* remaining time to completion, but it is usually more practical
	* to use a more well-defined metric such as pixels decoded or
	* portion of input stream consumed.  In any case, a sequence of
	* calls to this method during a given read operation should
	* supply a monotonically increasing sequence of percentage
	* values.  It is not necessary to supply the exact values
	* <code>0</code> and <code>100</code>, as these may be inferred
	* by the callee from other methods.
	*
	* <p> Each particular <code>ImageReader</code> implementation may
	* call this method at whatever frequency it desires.  A rule of
	* thumb is to call it around each 5 percent mark.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	* @param percentageDone the approximate percentage of decoding that
	* has been completed.
	*/
	@:overload public function imageProgress(source : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	/**
	* Reports that the current image read operation has completed.
	* All <code>ImageReader</code> implementations are required to
	* call this method exactly once upon completion of each image
	* read operation.
	*
	* @param source the <code>ImageReader</code> object calling this
	* method.
	*/
	@:overload public function imageComplete(source : javax.imageio.ImageReader) : Void;
	
	/**
	* Reports that a thumbnail read operation is beginning.  All
	* <code>ImageReader</code> implementations are required to call
	* this method exactly once when beginning a thumbnail read
	* operation.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	* @param imageIndex the index of the image being read within its
	* containing input file or stream.
	* @param thumbnailIndex the index of the thumbnail being read.
	*/
	@:overload public function thumbnailStarted(source : javax.imageio.ImageReader, imageIndex : Int, thumbnailIndex : Int) : Void;
	
	/**
	* Reports the approximate degree of completion of the current
	* <code>getThumbnail</code> call within the associated
	* <code>ImageReader</code>.  The semantics are identical to those
	* of <code>imageProgress</code>.
	*
	* @param source the <code>ImageReader</code> object calling this method.
	* @param percentageDone the approximate percentage of decoding that
	* has been completed.
	*/
	@:overload public function thumbnailProgress(source : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	/**
	* Reports that a thumbnail read operation has completed.  All
	* <code>ImageReader</code> implementations are required to call
	* this method exactly once upon completion of each thumbnail read
	* operation.
	*
	* @param source the <code>ImageReader</code> object calling this
	* method.
	*/
	@:overload public function thumbnailComplete(source : javax.imageio.ImageReader) : Void;
	
	/**
	* Reports that a read has been aborted via the reader's
	* <code>abort</code> method.  No further notifications will be
	* given.
	*
	* @param source the <code>ImageReader</code> object calling this
	* method.
	*/
	@:overload public function readAborted(source : javax.imageio.ImageReader) : Void;
	
	
}
