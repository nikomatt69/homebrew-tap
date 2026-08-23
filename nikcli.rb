# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-23T16:35:41.568Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.311.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.311.0/nikcli-ai-darwin-x64.zip"
      sha256 "fcde290c0e5f149d44146f25d0f26058681821d24e5f7c1dd869e6a3a697d025"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.311.0/nikcli-ai-darwin-arm64.zip"
      sha256 "327337410f5a8a626d833461624478f42d05ad994c2a71eccbb096cf11a79b69"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.311.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ae655dc5407c4f0030ce1d1ea8de0088e7e2f4c6180aad698ad856b73f11d645"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.311.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4893d6551cfc0551479f750a0e9eb8118f746be60c0c091549c7611ea67d4d10"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

