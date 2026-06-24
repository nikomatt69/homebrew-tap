# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T18:54:48.039Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.112.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.112.0/nikcli-ai-darwin-x64.zip"
      sha256 "a377d07ecd562fd6abcd4a662c710d6bf9377d7d6671f273196ef3cd49734b7f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.112.0/nikcli-ai-darwin-arm64.zip"
      sha256 "75c309a25dd3e5ba4b4841aadde864d9cb918fd0fd08d007a0153694925c938d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.112.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "63d6bda181856d2b9507c694f7873a913def095561eeb862e474f27cd6170768"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.112.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "865cda780e8debae9afd1e4de4dbc4c455f01f8f80269a6a0fe945ac67208966"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

