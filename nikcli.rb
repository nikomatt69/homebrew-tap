# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-04T01:55:04.983Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.427.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.427.0/nikcli-ai-darwin-x64.zip"
      sha256 "c0152409d7f23eda3a2cf05ab3ba15860230e1c80b3a124e7c5b84eb89b2a219"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.427.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8023d9bf769fa9dc24b7396fcdc5f404ecaa36e6ebfec643f9d115e918fd1597"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.427.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b057c8c72514d123ff9d1413c2e4c3e270c03e1e1ce814f29d1829a715bc560a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.427.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "57bea75c0f3b1006f7bec42d778df6612140d68eaafe834448f38e1d4d0ebc20"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

