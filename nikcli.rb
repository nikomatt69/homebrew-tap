# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-12T18:09:15.708Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.432.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.432.0/nikcli-ai-darwin-x64.zip"
      sha256 "0a82bd31dc72cc8af544e6016592e6c3202519961ebd5995de91ef528c56dfe5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.432.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5cd3174612c6347bcc9363e6e960a8f0c00e867e4d9949ae8b3c7d8d22886165"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.432.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "65e99e2d0551ff248e63719ae4a430e3fdb4d2199b7426fa9eea66dfb854780c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.432.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0b48b1913140d30b692487cd542b607d93f8145b6511b6f8e01d1ae7a6c4c9f6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

