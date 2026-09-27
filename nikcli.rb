# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-27T17:55:59.940Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.404.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.404.0/nikcli-ai-darwin-x64.zip"
      sha256 "cee2beeec7c3839015ffa584ea207fc873bf36c9bd677421243db347030a9f25"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.404.0/nikcli-ai-darwin-arm64.zip"
      sha256 "adc06bd4def7bcf439733256f545b28ed46938699e8400c04f4316d7f5ec8809"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.404.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4b56e98b517ed1d0b7acba43214b80ab78b6dba971cff9679c86eb093feb6aa0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.404.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c3f5854b3b0cfc8aac2e099ac5373424c94fbba4d92e5e17e267aa327b34ec5a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

