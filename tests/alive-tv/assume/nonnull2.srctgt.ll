declare void @llvm.assume(i1)

declare void @f(ptr nonnull noundef)

define void @src(ptr %ptr) {
  call void @f(ptr %ptr)
  ret void
}

define void @tgt(ptr %ptr) {
  call void @f(ptr %ptr)
  call void @llvm.assume(i1 1) [ "nonnull"(ptr %ptr) ]
  ret void
}
