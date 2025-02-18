// Copyright 2023 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#ifndef IREE_CODEGEN_COMMON_CPU_PASSES
#define IREE_CODEGEN_COMMON_CPU_PASSES

include "mlir/Pass/PassBase.td"

//===---------------------------------------------------------------------===//
// Common Passes used for CPU-like backends (keep alphabetical)
//===---------------------------------------------------------------------===//

def CPUMaterializeEncoding :
    Pass<"iree-codegen-cpu-materialize-encoding", "func::FuncOp"> {
  let summary = "Materialize the encoding for tensor as specified by the backend";
  let constructor = "mlir::iree_compiler::createCPUMaterializeEncodingPass()";
}

def CPUMaterializeUpperBoundTileSize :
    InterfacePass<"iree-codegen-cpu-materialize-upper-bound-tile-size", "mlir::FunctionOpInterface"> {
  let summary = "Materialize upper_bound_tile_size to constants.";
  let constructor = "mlir::iree_compiler::createCPUMaterializeUpperBoundTileSizePass()";
}

#endif  // IREE_CODEGEN_COMMON_CPU_PASSES
