# ─── STAGE 1: BUILD ───────────────────────────────────
# This stage exists only to compile the C++ code.
# It will NOT be in the final image.
FROM gcc:13 AS builder

# Set working directory inside the build container
WORKDIR /build

# Copy your source file in
COPY Shell_final.cpp .

# Compile it — produce a static binary so stage 2 needs no gcc
RUN g++ -std=c++17 -O2 -static Shell_final.cpp -o myshell

# ─── STAGE 2: RUN ─────────────────────────────────────
# Minimal Alpine image — no gcc, no compiler, nothing extra
# Just the compiled binary
FROM alpine:3.19

# Create a working directory for the shell to operate in
WORKDIR /shell

# Copy ONLY the compiled binary from stage 1
# gcc:13 is left behind entirely — not in this image
COPY --from=builder /build/myshell .

# Make it executable
RUN chmod +x myshell

# Run the shell
CMD ["./myshell"]
